prompt --application/shared_components/user_interface/lovs/producto_nombre_1
begin
--   Manifest
--     PRODUCTO.NOMBRE_1
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
 p_id=>wwv_flow_imp.id(4602611218433734)
,p_lov_name=>'PRODUCTO.NOMBRE_1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PRODUCTO'
,p_return_column_name=>'ID_PRODUCTO'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>22581967
);
wwv_flow_imp.component_end;
end;
/
