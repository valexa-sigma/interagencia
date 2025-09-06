prompt --application/shared_components/user_interface/lovs/usuario_username
begin
--   Manifest
--     USUARIO.USERNAME
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
 p_id=>wwv_flow_imp.id(3270254462813993)
,p_lov_name=>'USUARIO.USERNAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USUARIO'
,p_return_column_name=>'ID_USUARIO'
,p_display_column_name=>'USERNAME'
,p_default_sort_column_name=>'USERNAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>21335395
);
wwv_flow_imp.component_end;
end;
/
