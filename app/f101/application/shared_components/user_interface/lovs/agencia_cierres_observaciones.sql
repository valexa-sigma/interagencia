prompt --application/shared_components/user_interface/lovs/agencia_cierres_observaciones
begin
--   Manifest
--     AGENCIA_CIERRES.OBSERVACIONES
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
 p_id=>wwv_flow_imp.id(6230303150189257)
,p_lov_name=>'AGENCIA_CIERRES.OBSERVACIONES'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'AGENCIA_CIERRES'
,p_return_column_name=>'ID_CIERRE'
,p_display_column_name=>'OBSERVACIONES'
,p_default_sort_column_name=>'OBSERVACIONES'
,p_default_sort_direction=>'ASC'
,p_version_scn=>40600161
);
wwv_flow_imp.component_end;
end;
/
