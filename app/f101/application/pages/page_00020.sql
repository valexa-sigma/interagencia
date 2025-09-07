prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>2000499728072309
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'ELEMASFT'
);
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Registrar Venta'
,p_alias=>'REGISTRAR-VENTA'
,p_page_mode=>'MODAL'
,p_step_title=>'Registrar Venta'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when=>'P20_ID_CIERRE'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4601103053433697)
,p_plug_name=>'Registrar Venta'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'AGENCIA_VENTAS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4611209058433755)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4611637355433757)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4611209058433755)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4613086472433765)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4611209058433755)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P20_ID_VENTA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(2572695182252407)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4613467911433765)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4611209058433755)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P20_ID_VENTA'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(2572695182252407)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4613862840433766)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4611209058433755)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P20_ID_VENTA'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4601403918433707)
,p_name=>'P20_ID_VENTA'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Id Venta'
,p_source=>'ID_VENTA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4601896822433719)
,p_name=>'P20_ID_AGENCIA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'Agencia'
,p_source=>'ID_AGENCIA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'AGENCIA.NOMBRE_1'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4602576873433734)
,p_name=>'P20_ID_PRODUCTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'Producto'
,p_source=>'ID_PRODUCTO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'PRODUCTOS_AGENCIA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.id_producto as r, p.NOMBRE|| '' ('' || p.EMPAQUE_TIPO||'': ''||p.EMPAQUE_CANTIDAD || '' ''||p.EMPAQUE_UNIDAD||'') - Precio: ''||to_char(p.PVS_USD, ''FML999G999G999G999G990D00'')   as d',
'from PRODUCTO p',
'join AGENCIA_PRODUCTO ap on ap.ID_PRODUCTO = p.ID_PRODUCTO AND AP.ID_AGENCIA = v(''APP_AGENCIA_ACTIVA'')',
'order by p.nombre'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4603254103433736)
,p_name=>'P20_FECHA'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha'
,p_format_mask=>'DD/MM/YYYY'
,p_source=>'FECHA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4603636326433737)
,p_name=>'P20_CANTIDAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'Cantidad'
,p_source=>'CANTIDAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum as d, rownum as r',
'from dual',
'connect by level <= 30;'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4604045686433739)
,p_name=>'P20_PRECIO_UNIDAD_USD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'PVP Unidad (USD)'
,p_format_mask=>'&CURRENCYMASK.'
,p_source=>'PRECIO_UNIDAD_USD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4604427748433740)
,p_name=>'P20_PRECIO_UNIDAD_VES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'PVP Unidad (Bs)'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'PRECIO_UNIDAD_VES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_attributes=>'readonly'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4604820540433741)
,p_name=>'P20_TASA_USD_VES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tasa',
'from TASA_CAMBIO_USD_VES',
'order by cdt desc',
'fetch first row only',
';'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Tasa Usd'
,p_source=>'TASA_USD_VES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4605231214433742)
,p_name=>'P20_CBY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'Cby'
,p_source=>'CBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_display_when=>'P20_ID_VENTA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4605643985433743)
,p_name=>'P20_CDT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'Cdt'
,p_source=>'CDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P20_ID_VENTA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4606415442433746)
,p_name=>'P20_MBY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'Mby'
,p_source=>'MBY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>50
,p_display_when=>'P20_ID_VENTA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4606820024433747)
,p_name=>'P20_MDT'
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'Mdt'
,p_source=>'MDT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_display_when=>'P20_ID_VENTA'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4877481748676611)
,p_name=>'P20_TOTAL_VES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'Total Bs.'
,p_source=>'TASA_USD_VES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4877695888676613)
,p_name=>'P20_PRECIO_UNIDAD_USD_TMP'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4877808654676615)
,p_name=>'P20_PRECIO_UNIDAD_VES_TMP'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4878190865676618)
,p_name=>'P20_TOTAL_VES_TMP'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4879938489676636)
,p_name=>'P20_ID_TASA_USD'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_prompt=>'Id Tasa Usd'
,p_source=>'ID_TASA_USD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4880005232676637)
,p_name=>'P20_ID_CIERRE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_item_source_plug_id=>wwv_flow_imp.id(4601103053433697)
,p_source=>'ID_CIERRE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4606195133433745)
,p_validation_name=>'P20_CDT must be timestamp'
,p_validation_sequence=>90
,p_validation=>'P20_CDT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(4605643985433743)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(4607320018433748)
,p_validation_name=>'P20_MDT must be timestamp'
,p_validation_sequence=>110
,p_validation=>'P20_MDT'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(4606820024433747)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4611768937433757)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4611637355433757)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4612589203433763)
,p_event_id=>wwv_flow_imp.id(4611768937433757)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4877064546676607)
,p_name=>'Get Price'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_ID_PRODUCTO,P20_TASA_USD_VES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4877265166676609)
,p_event_id=>wwv_flow_imp.id(4877064546676607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log(''User selected a Product: '' + apex.item(''P20_ID_PRODUCTO'').value )'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4879589943676632)
,p_event_id=>wwv_flow_imp.id(4877064546676607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4877156905676608)
,p_event_id=>wwv_flow_imp.id(4877064546676607)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P20_ID_PRODUCTO IS NULL ',
'    THEN RETURN;',
'END IF;',
'',
'SELECT PVS_USD',
'INTO :P20_PRECIO_UNIDAD_USD_TMP',
'FROM PRODUCTO',
'WHERE ID_PRODUCTO = :P20_ID_PRODUCTO;',
'',
':P20_PRECIO_UNIDAD_VES_TMP := :P20_TASA_USD_VES * :P20_PRECIO_UNIDAD_USD_TMP;',
''))
,p_attribute_02=>'P20_ID_PRODUCTO,P20_TASA_USD_VES'
,p_attribute_03=>'P20_PRECIO_UNIDAD_USD_TMP,P20_PRECIO_UNIDAD_VES_TMP'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4877571449676612)
,p_event_id=>wwv_flow_imp.id(4877064546676607)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' const l_usd = $v(''P20_PRECIO_UNIDAD_USD_TMP'');',
'  const l_ves = $v(''P20_PRECIO_UNIDAD_VES_TMP'');',
'',
' $s("P20_PRECIO_UNIDAD_USD", l_usd, true);',
' $s("P20_PRECIO_UNIDAD_VES", l_ves, true);',
'/*',
'',
'const url = ''https://bcv.org.ve''; // Replace with your API endpoint',
'',
'fetch(url)',
'  .then(response => {',
'    if (!response.ok) {',
'      throw new Error(`HTTP error! status: ${response.status}`);',
'    }',
'    console.log(response.json()); // Or .text(), .blob(), etc., depending on the expected response',
'  })',
'  .then(data => {',
'    // Process the received data',
'    console.log(''Data fetched successfully:'', data);',
'    // You can update page items, display messages, or perform other actions here',
'    // For example, if using Oracle APEX:',
'    // apex.item(''P1_ITEM'').setValue(data.someValue);',
'  })',
'  .catch(error => {',
'    // Handle any errors during the fetch operation',
'    console.error(''Fetch error:'', error);',
'    // Display an error message to the user',
'    // apex.message.alert(''Error fetching data: '' + error.message);',
'  });',
'  */'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4877379791676610)
,p_event_id=>wwv_flow_imp.id(4877064546676607)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P20_CANTIDAD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4877950285676616)
,p_name=>'Get Subtotal'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P20_CANTIDAD,P20_ID_PRODUCTO,P20_TASA_USD_VES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4878222357676619)
,p_event_id=>wwv_flow_imp.id(4877950285676616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log(''Obtaining subtotal...'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4878059701676617)
,p_event_id=>wwv_flow_imp.id(4877950285676616)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_debug.message('':P20_CANTIDAD: ''||:P20_CANTIDAD);',
'apex_debug.message('':P20_PRECIO_UNIDAD_VES_TMP ): ''||:P20_PRECIO_UNIDAD_VES_TMP );',
'',
':P20_TOTAL_VES_TMP := ROUND( :P20_CANTIDAD * :P20_PRECIO_UNIDAD_VES_TMP , 2) ;',
'',
'apex_debug.message('':P20_TOTAL_VES_TMP ): ''||:P20_TOTAL_VES_TMP );'))
,p_attribute_02=>'P20_CANTIDAD,P20_PRECIO_UNIDAD_VES_TMP'
,p_attribute_03=>'P20_TOTAL_VES_TMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4878380319676620)
,p_event_id=>wwv_flow_imp.id(4877950285676616)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' const l_subtotal = $v(''P20_TOTAL_VES_TMP'');',
'  ',
' $s("P20_TOTAL_VES", l_subtotal , true);',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4879427885676631)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Save Rate Bs/USD '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO TASA_CAMBIO_USD_VES(',
'  FECHA, TASA, ORIGEN',
')',
'SELECT',
'  LOCALTIMESTAMP, :P20_TASA_USD_VES, ''F''',
'FROM DUAL',
'WHERE NOT EXISTS ( -- solo registra la nueva tasa si es distinta de la mas reciente ',
'  select 1',
'  from ( -- obtiene la tasa mas reciente',
'              SELECT tasa',
'              FROM TASA_CAMBIO_USD_VES',
'              order by fecha desc',
'              fetch first row only',
'  ) x',
'  where x.tasa = :P20_TASA_USD_VES -- compara la tasa mas reciente con la del formulario',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P20_ID_CIERRE'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>4879427885676631
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4614654404433769)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4601103053433697)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Registrar Venta'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P20_ID_CIERRE'
,p_process_when_type=>'ITEM_IS_NULL'
,p_internal_uid=>4614654404433769
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4615027263433770)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>4615027263433770
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4614287235433768)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4601103053433697)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registrar Venta'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>4614287235433768
);
wwv_flow_imp.component_end;
end;
/
