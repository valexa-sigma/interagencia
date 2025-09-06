prompt --application/shared_components/user_interface/lovs/producto_nombre
begin
--   Manifest
--     PRODUCTO.NOMBRE
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
 p_id=>wwv_flow_imp.id(3892306940843466)
,p_lov_name=>'PRODUCTO.NOMBRE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id_producto as r, NOMBRE|| '' ('' || EMPAQUE_TIPO||'': ''||EMPAQUE_CANTIDAD || '' ''||EMPAQUE_UNIDAD||'') - Precio: ''||to_char(PVS_USD, ''FML999G999G999G999G990D00'')   as d',
'from PRODUCTO',
'order by nombre'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>39120813
);
wwv_flow_imp.component_end;
end;
/
