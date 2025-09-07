prompt --application/shared_components/logic/application_computations/app_agencia_activa
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_AGENCIA_ACTIVA
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>2000499728072309
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'ELEMASFT'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(6402842151652170)
,p_computation_sequence=>10
,p_computation_item=>'APP_AGENCIA_ACTIVA'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select au.id_agencia --u.username, a.nombre',
'from usuario u',
'join agencia_usuario au on au.id_usuario = u.id_usuario',
'join agencia a on au.id_agencia = a.id_agencia',
'where au.activo = ''Y''',
'and u.activo = ''Y''',
'and u.username = UPPER(v(''APP_USER''))',
';'))
,p_version_scn=>40745796
);
wwv_flow_imp.component_end;
end;
/
