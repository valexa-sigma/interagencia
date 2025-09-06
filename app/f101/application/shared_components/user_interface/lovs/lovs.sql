prompt --application/shared_components/user_interface/lovs/lovs
begin
--   Manifest
--     LOVS
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
 p_id=>wwv_flow_imp.id(3877403332627190)
,p_lov_name=>'LOVS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LOV_VALUE AS D, LOV_VALUE AS R',
'FROM LOVS',
'WHERE LOV_NAME = ''LOVS''',
'ORDER BY LOV_VALUE'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>21386931
);
wwv_flow_imp.component_end;
end;
/
