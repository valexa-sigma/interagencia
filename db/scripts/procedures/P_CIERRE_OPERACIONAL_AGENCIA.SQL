create or replace procedure P_CIERRE_OPERACIONAL_AGENCIA(p_id_agencia in number) as
  l_saldo_anterior_ves number;
  l_saldo_anterior_usd number;
  l_id_cierre_anterior number;
  l_id_cierre number;
  l_fecha_corte date;
  l_ventas_ves number;
  l_ventas_usd number;
  l_compras_ves number;
  l_compras_usd number;
  l_gastos_ves number;
  l_gastos_usd number;
  l_activos_ves number;
  l_activos_usd number;
begin

    -- obtiene el cierre anterior, incluyendo el saldo (debe existir un registro de apertura con saldo cero minimo)
    select saldo_usd, saldo_ves, id_cierre
    into l_saldo_anterior_usd, l_saldo_anterior_ves, l_id_cierre_anterior
    from AGENCIA_CIERRES
    where id_agencia = p_id_agencia
    order by fecha_cierre desc
    fetch first row only;

    -- agregar registro de ejecucion a tabla de log
--PENDIENTE!!!

    -- registra el nuevo cierre
    insert into AGENCIA_CIERRES(id_agencia, fecha_cierre, id_cierre_anterior)
    values(p_id_agencia, trunc(sysdate), l_id_cierre_anterior)
    returning id_cierre, fecha_cierre 
    into l_id_cierre, l_fecha_corte;

    update AGENCIA_VENTAS
    set id_cierre = l_id_cierre
    where id_agencia = p_id_agencia
    and fecha < l_fecha_corte
    and id_cierre is null
    ;

    update AGENCIA_COMPRAS
    set id_cierre = l_id_cierre
    where id_agencia = p_id_agencia
    and fecha < l_fecha_corte
    and id_cierre is null    
    ;

    -- update AGENCIA_GASTOS
    -- set id_cierre = l_id_cierre
    -- where id_agencia = p_id_agencia
    -- and fecha < l_fecha_corte
    -- and id_cierre is null    
    -- ;    

    -- totaliza las VENTAS asociadas al cierre
    select  SUM(CANTIDAD*PRECIO_UNIDAD_VES) AS VENTAS_AGENCIA_USD, 
            SUM(CANTIDAD*PRECIO_UNIDAD_USD) AS VENTAS_AGENCIA_VES
    into l_ventas_ves, l_ventas_usd
    from AGENCIA_VENTAS v
    where id_agencia = p_id_agencia
    and id_cierre = l_id_cierre
    ;

    -- totaliza las COMPRAS asociadas al cierre
    select SUM(CANTIDAD*PRECIO_UNIDAD_USD) AS COMPRAS_AGENCIA_USD
    -- SUM(CANTIDAD*PRECIO_UNIDAD_VES) AS COMPRAS_AGENCIA_VES,     
    into l_compras_usd
    -- , l_compras_ves
    from AGENCIA_COMPRAS
    where id_agencia = p_id_agencia
    and id_cierre = l_id_cierre
    ;

    -- actualiza las entradas del cierre
    update AGENCIA_CIERRES set
        ventas_usd = l_ventas_usd
      , ventas_ves = l_ventas_ves
      , compras_usd = l_compras_usd
      , compras_ves = l_compras_ves
      , gastos_ves = l_gastos_ves
      , gastos_usd = l_gastos_usd
      , activos_ves = l_activos_ves
      , activos_usd = l_activos_usd
    where id_cierre = l_id_cierre
    and id_agencia = p_id_agencia;

    -- calcula el saldo del del cierre
    update AGENCIA_CIERRES set
        saldo_usd = (l_saldo_anterior_usd + ventas_usd) - (compras_usd + gastos_usd + activos_usd)
      , saldo_ves = (l_saldo_anterior_ves + ventas_ves) - (compras_ves + gastos_ves + activos_ves)
    where id_cierre = l_id_cierre
    and id_agencia = p_id_agencia;

    commit;


-- agregar registros intermedios

    -- agregar registro de finalizacion a tabla de log
--PENDIENTE!!!    

EXCEPTION
  WHEN OTHERS THEN
    -- send email
    -- log: format_error_backtrace + stack
    null;
end;
/