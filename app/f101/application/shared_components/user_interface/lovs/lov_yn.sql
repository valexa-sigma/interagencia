prompt --application/shared_components/user_interface/lovs/lov_yn
begin
--   Manifest
--     LOV_YN
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
 p_id=>wwv_flow_imp.id(3151660323662139)
,p_lov_name=>'LOV_YN'
,p_lov_query=>'.'||wwv_flow_imp.id(3151660323662139)||'.'
,p_location=>'STATIC'
,p_version_scn=>21305660
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3151934145662145)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Si'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3152370743662147)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
