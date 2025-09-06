prompt --application/shared_components/user_interface/lovs/agencia_nombre
begin
--   Manifest
--     AGENCIA.NOMBRE
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
 p_id=>wwv_flow_imp.id(3269540475813961)
,p_lov_name=>'AGENCIA.NOMBRE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.NOMBRE AS D, A.ID_AGENCIA AS R',
'from usuario u',
'join AGENCIA_USUARIO au on au.ID_USUARIO = u.ID_USUARIO',
'join AGENCIA a on a.ID_AGENCIA = au.ID_AGENCIA',
'where u.username = :APP_USER',
'ORDER BY A.NOMBRE',
';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>21414579
);
wwv_flow_imp.component_end;
end;
/
