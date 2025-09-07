prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'InterAgencia'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2580393966252547)
,p_plug_name=>'InterAgencia'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'NEVER'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3988096693295212)
,p_plug_name=>'HomeOptions'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  -- data',
'  ID_CARD as card_primary_key,    -- primary key',
'  code as card_secondary_key,  -- secondary key if needed',
'  title as card_title,          -- title',
'  subtitle as card_subtitle,       -- subtitle',
'  body as card_body,           -- card body text',
'  subbody as card_secondary_body, -- card secondary text, positioned near bottom',
'',
'  -- ui and other attributes',
'  icon as card_icon,           -- icon class, e.g. fa-cloud',
'  badge as card_badge,          -- badge, can be a small text',
'  image as card_image           -- image url, url or blob columns',
'  , APEx_PAGE.GET_URL(p_page => TARGET_PAGE) AS TARGET_PAGE_URL',
'from cards',
'where category = ''HOMEOPTIONS''',
'order by seq'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(3988189225295213)
,p_region_id=>wwv_flow_imp.id(3988096693295212)
,p_layout_type=>'FLOAT'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_BODY'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_css_classes=>'fa-american-sign-language-interpreting'
,p_icon_position=>'TOP'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(3988902285295221)
,p_card_id=>wwv_flow_imp.id(3988189225295213)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'&TARGET_PAGE_URL.'
);
wwv_flow_imp.component_end;
end;
/
