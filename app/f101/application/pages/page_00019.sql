prompt --application/pages/page_00019
begin
--   Manifest
--     PAGE: 00019
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
 p_id=>19
,p_name=>'Ventas'
,p_alias=>'VENTAS'
,p_step_title=>'Ventas'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4616098556433777)
,p_plug_name=>'Ventas'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_VENTA,',
'       ID_AGENCIA,',
'       ID_PRODUCTO,',
'       FECHA,',
'       CANTIDAD,',
'       PRECIO_UNIDAD_USD,',
'       CANTIDAD*PRECIO_UNIDAD_USD AS TOTAL_USD,',
'       PRECIO_UNIDAD_VES,',
'       TASA_USD_VES,',
'       CANTIDAD*PRECIO_UNIDAD_VES AS TOTAL_BS,       ',
'       CBY,',
'       CDT,',
'       MBY,',
'       MDT,',
'       ID_TASA_USD',
'  from AGENCIA_VENTAS',
'  WHERE 1=1',
'   AND FECHA >= TO_DATE(:P19_FROM_DATE, ''DD/MM/YYYY'') AND FECHA < TO_DATE(:P19_TO_DATE, ''DD/MM/YYYY'') + 1',
'  ORDER BY CDT DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P19_FROM_DATE,P19_TO_DATE'
,p_prn_page_header=>'Ventas'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4616193464433777)
,p_name=>'Ventas'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_VENTA'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:RP:P20_ID_VENTA:\#ID_VENTA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'MORAP'
,p_internal_uid=>4616193464433777
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4616861451433788)
,p_db_column_name=>'ID_VENTA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Venta'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4618011050433794)
,p_db_column_name=>'FECHA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Fecha'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4618463684433795)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4618856245433795)
,p_db_column_name=>'PRECIO_UNIDAD_USD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'PVP (USD)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'&CURRENCYMASK.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4619224609433796)
,p_db_column_name=>'PRECIO_UNIDAD_VES'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'PVP (Bs)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'&CURRENCYMASK.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4619634388433797)
,p_db_column_name=>'TASA_USD_VES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Tasa Bs/USD'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4620043291433797)
,p_db_column_name=>'CBY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4620431735433798)
,p_db_column_name=>'CDT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Cdt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_display_condition_type=>'NEVER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4620801072433798)
,p_db_column_name=>'MBY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Vendedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4621101392433799)
,p_db_column_name=>'MDT'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Fecha/Hora'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD/MM HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4878521276676622)
,p_db_column_name=>'ID_AGENCIA'
,p_display_order=>22
,p_column_identifier=>'M'
,p_column_label=>'Id Agencia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4878664762676623)
,p_db_column_name=>'ID_PRODUCTO'
,p_display_order=>32
,p_column_identifier=>'N'
,p_column_label=>'Producto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3892306940843466)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4878778263676624)
,p_db_column_name=>'ID_TASA_USD'
,p_display_order=>42
,p_column_identifier=>'O'
,p_column_label=>'Id Tasa Usd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4878867041676625)
,p_db_column_name=>'TOTAL_USD'
,p_display_order=>52
,p_column_identifier=>'P'
,p_column_label=>'Total USD'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'&CURRENCYMASK.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4878931497676626)
,p_db_column_name=>'TOTAL_BS'
,p_display_order=>62
,p_column_identifier=>'Q'
,p_column_label=>'Total Bs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'&CURRENCYMASK.'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4623953109439820)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'46240'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_PRODUCTO:CANTIDAD:PRECIO_UNIDAD_USD:TOTAL_USD:PRECIO_UNIDAD_VES:TASA_USD_VES:TOTAL_BS:MBY:MDT:'
,p_sum_columns_on_break=>'TOTAL_USD:TOTAL_BS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4623232708433805)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2567538157252190)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4621659735433800)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4616098556433777)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:20::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4879056475676627)
,p_name=>'P19_FROM_DATE'
,p_item_sequence=>10
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--TO_CHAR(TRUNC(SYSDATE), ''&SHDATEMASK.'')',
'TRUNC(SYSDATE)'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Desde'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
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
 p_id=>wwv_flow_imp.id(4879137541676628)
,p_name=>'P19_TO_DATE'
,p_item_sequence=>20
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- TO_CHAR(TRUNC(SYSDATE), ''&SHDATEMASK.'')',
'TRUNC(SYSDATE)'))
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Fecha Hasta'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4621970965433800)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4616098556433777)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4622424553433802)
,p_event_id=>wwv_flow_imp.id(4621970965433800)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4616098556433777)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4879220111676629)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P19_FROM_DATE,P19_TO_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4879340252676630)
,p_event_id=>wwv_flow_imp.id(4879220111676629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4616098556433777)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
