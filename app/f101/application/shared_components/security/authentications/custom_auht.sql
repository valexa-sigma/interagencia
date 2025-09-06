prompt --application/shared_components/security/authentications/custom_auht
begin
--   Manifest
--     AUTHENTICATION: CUSTOM-AUHT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>2000499728072309
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'ELEMASFT'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(3516951696479116)
,p_name=>'CUSTOM-AUHT'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'AUTHENTICATE_USER'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>21372658
);
wwv_flow_imp.component_end;
end;
/
