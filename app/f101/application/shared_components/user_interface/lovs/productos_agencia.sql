prompt --application/shared_components/user_interface/lovs/productos_agencia
begin
--   Manifest
--     PRODUCTOS_AGENCIA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>2000499728072309
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'ELEMASFT'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(6403744167689967)
,p_lov_name=>'PRODUCTOS_AGENCIA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id_producto as r, p.NOMBRE|| '' ('' || p.EMPAQUE_TIPO||'': ''||p.EMPAQUE_CANTIDAD || '' ''||p.EMPAQUE_UNIDAD||'') - Precio: ''||to_char(p.PVS_USD, ''FML999G999G999G999G990D00'')   as d',
'from PRODUCTO p',
'join AGENCIA_PRODUCTO ap on ap.ID_PRODUCTO = p.ID_PRODUCTO AND AP.ID_AGENCIA = v(''APP_AGENCIA_ACTIVA'')',
'where ap.activo = ''Y''',
'and p.activo = ''Y''',
'order by p.nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>40746851
);
wwv_flow_imp.component_end;
end;
/
