prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'Compras'
,p_alias=>'COMPRAS'
,p_step_title=>'Compras'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3905080091843495)
,p_plug_name=>'Compras'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID_COMPRA,',
'       ID_AGENCIA,',
'       ID_PRODUCTO,',
'       PROVEEDOR,',
'       FECHA,',
'       CANTIDAD,',
'       PRECIO_UNIDAD_USD,',
'       (CANTIDAD*PRECIO_UNIDAD_USD) as SUBTOTAL,',
'       CBY,',
'       CDT,',
'       MBY,',
'       MDT',
'  from AGENCIA_COMPRAS'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Compras'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3905112518843495)
,p_name=>'Compras'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_ID_COMPRA:\#ID_COMPRA#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'MORAP'
,p_internal_uid=>3905112518843495
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3905867280843498)
,p_db_column_name=>'ID_COMPRA'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Compra'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3907035729843500)
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
 p_id=>wwv_flow_imp.id(3907491225843501)
,p_db_column_name=>'CANTIDAD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cantidad'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3907852511843501)
,p_db_column_name=>'PRECIO_UNIDAD_USD'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Precio Unitario (USD)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3908660291843503)
,p_db_column_name=>'CBY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3909031998843503)
,p_db_column_name=>'CDT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Cdt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3909498083843504)
,p_db_column_name=>'MBY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Mby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3909833089843505)
,p_db_column_name=>'MDT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Mdt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3987053457295202)
,p_db_column_name=>'ID_AGENCIA'
,p_display_order=>21
,p_column_identifier=>'L'
,p_column_label=>'Id Agencia'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3987112625295203)
,p_db_column_name=>'ID_PRODUCTO'
,p_display_order=>31
,p_column_identifier=>'M'
,p_column_label=>'Id Producto'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3892306940843466)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3987265022295204)
,p_db_column_name=>'PROVEEDOR'
,p_display_order=>41
,p_column_identifier=>'N'
,p_column_label=>'Proveedor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3987308402295205)
,p_db_column_name=>'SUBTOTAL'
,p_display_order=>51
,p_column_identifier=>'O'
,p_column_label=>'Subtotal'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3912583093843910)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'39126'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'FECHA:ID_PRODUCTO:PROVEEDOR:CANTIDAD:PRECIO_UNIDAD_USD:SUBTOTAL:CBY:CDT:MBY:MDT:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3911937320843508)
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
 p_id=>wwv_flow_imp.id(3910303734843506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3905080091843495)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:15::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3910629749843506)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3905080091843495)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3911130164843507)
,p_event_id=>wwv_flow_imp.id(3910629749843506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3905080091843495)
);
wwv_flow_imp.component_end;
end;
/
