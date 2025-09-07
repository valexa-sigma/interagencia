prompt --application/shared_components/logic/application_items/app_agencia_activa
begin
--   Manifest
--     APPLICATION ITEM: APP_AGENCIA_ACTIVA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>2000499728072309
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'ELEMASFT'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(6402489908642503)
,p_name=>'APP_AGENCIA_ACTIVA'
,p_protection_level=>'I'
,p_version_scn=>40743123
);
wwv_flow_imp.component_end;
end;
/
