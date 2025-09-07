insert into agencia_producto(
    id_agencia, id_producto
)
select 1 as id_agencia, p.id_producto
from producto p
where not exists (
    select x.id_producto
    from agencia_producto x
    where x.id_producto = p.id_producto
);
