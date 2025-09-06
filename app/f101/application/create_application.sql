prompt --application/create_application
begin
--   Manifest
--     FLOW: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>2000499728072309
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'ELEMASFT'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'ELEMASFT')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'InterAgencia')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'INTERAGENCIA')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'93518B8A5AA6ECB8BDFC9539CD83FADFC3B3D0513F24B65CC119EE7956927875'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(3516951696479116)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'InterAgencia'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'InterAgencia'
,p_substitution_string_02=>'CBY'
,p_substitution_value_02=>'Creado Por'
,p_substitution_string_03=>'MBY'
,p_substitution_value_03=>'Modificado Por'
,p_substitution_string_04=>'CDT'
,p_substitution_value_04=>'F. Creacion'
,p_substitution_string_05=>'MDT'
,p_substitution_value_05=>'F. Modificacion'
,p_substitution_string_06=>'DATEMASK'
,p_substitution_value_06=>'DD/MM/YYYY HH:MI AM'
,p_substitution_string_07=>'CURRENCYMASK'
,p_substitution_value_07=>'FML999G999G999G999G990D00'
,p_substitution_string_08=>'SHDATEMASK'
,p_substitution_value_08=>'DD/MM/YYYY'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>39127750
,p_print_server_type=>'NATIVE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'Y'
,p_pwa_manifest_display=>'standalone'
,p_pwa_manifest_orientation=>'any'
,p_pwa_apple_status_bar_style=>'default'
,p_pwa_is_push_enabled=>'N'
);
wwv_flow_imp.component_end;
end;
/
