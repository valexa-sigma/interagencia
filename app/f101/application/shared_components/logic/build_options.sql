prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>2000499728072309
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'ELEMASFT'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(2566938491252185)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>21071993
);
wwv_flow_imp.component_end;
end;
/
