prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_name=>'Listas de Valores'
,p_alias=>'LISTAS-DE-VALORES'
,p_step_title=>'Listas de Valores'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3870717869600705)
,p_plug_name=>'Listas de Valores'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'LOVS'
,p_query_where=>'LOV_NAME = :P12_LISTA'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'lov_name, lov_value'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P12_LISTA'
,p_prn_page_header=>'Listas de Valores'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3870896229600705)
,p_name=>'Listas de Valores'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'ID_VALUE'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:RP:P13_ID_VALUE:\#ID_VALUE#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'MORAP'
,p_internal_uid=>3870896229600705
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3871568168600708)
,p_db_column_name=>'ID_VALUE'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id Value'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3871953122600709)
,p_db_column_name=>'LOV_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Lov Name'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3872366729600710)
,p_db_column_name=>'LOV_VALUE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Valor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3872762030600711)
,p_db_column_name=>'CBY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3873119152600712)
,p_db_column_name=>'CDT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cdt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3873510380600713)
,p_db_column_name=>'MBY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Mby'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3873957951600714)
,p_db_column_name=>'MDT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Mdt'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3876526722604316)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'38766'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_VALUE:LOV_NAME:LOV_VALUE:CBY:CDT:MBY:MDT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3875943021600718)
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
 p_id=>wwv_flow_imp.id(3874447401600714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3870717869600705)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:13::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3146163516651846)
,p_name=>'P12_LISTA'
,p_item_sequence=>10
,p_prompt=>'Lista'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOVS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LOV_VALUE AS D, LOV_VALUE AS R',
'FROM LOVS',
'WHERE LOV_NAME = ''LOVS''',
'ORDER BY LOV_VALUE'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3874740309600715)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3870717869600705)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3875185913600716)
,p_event_id=>wwv_flow_imp.id(3874740309600715)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3870717869600705)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3146230662651847)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_LISTA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3146359576651848)
,p_event_id=>wwv_flow_imp.id(3146230662651847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3870717869600705)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
