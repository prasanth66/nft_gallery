// All colors used in the app

// ignore_for_file: constant_identifier_names
//============================================================================
import 'package:final_template/app_imports.dart';
import 'package:flutter/material.dart';

import 'figma_colors.dart';

//============================================================================
class AppColors {
  static const Color APP_THEME = Color(0xFF23AA8B);
  static const Color SPLASH_BG = Colors.grey;

  // Figma Primary colors

  static const Color PRIMARY_COLOR = FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color SECONDARY_COLOR = Color(0xFF4BA2B5);

  // Primary button
  static const Color PRIMARY_BUTTON_FG = APP_THEME;
  static const Color PRIMARY_BUTTON_BG = APP_THEME;
  static const Color PRIMARY_BUTTON_BORDERCOLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color PRIMARY_BUTTON_DISABLEDCOLOR = Color(0xFFE2DEF5);
  static const Color PRIMARY_BUTTON_LOADERDCOLOR = Color(0xFF6C58CE);
  static const Color PRIMARY_BUTTON_TEXT = Colors.black;

  //IconTextIcon
  static const Color ICON_TEXT_ICON_BORDER = Color(0xFF676777);
  static const Color ICON_TEXT_ICON_LEFT_ICON = Color(0xFF676777);
  static const Color ICON_TEXT_ICON_RIGHT_ICON = Color(0xFF676777);
  static const Color ICON_TEXT_ICON_BASE = Colors.transparent;

  //Popup Dialog
  static const Color POPUP_DIALOG_BG_TWO_COLOR = Color(0xFFEB595F);
  static const Color POPUP_DIALOG_BG_ONE_COLOR = Color(0xFFE6E6E6);
  static const Color POPUP_DIALOG_TEXT_COLOR = BLACK_1A1A1A;
  static const Color POPUP_DIALOG_DIVIDER_COLOR = Color(0xFFE6E6E6);

  //Toast Message
  static const Color TOAST_MESSAGE_TEXT_COLOR = BLACK_1A1A1A;
  static const Color TOAST_MESSAGE_BG_COLOR = Color(0xFFEB595F);
  static const Color TOAST_MESSAGE_ICON_COLOR = BLACK_1A1A1A;
  static const Color TOAST_MESSAGE_STYLE = Color(0xFFF4F4F5);

  //Custom Rounded TabBar
  static const Color SELECTED_TAB_CUSTOM_ROUNDED_TAB_BAR = Color(0xFFEB595F);
  static const Color SELECTED_TEXT_CUSTOM_ROUNDED_TAB_BAR = Color(0xFFE6E6E6);
  static const Color UNSELECTED_TAB_CUSTOM_ROUNDED_TAB_BAR = Color(0xFFDEDEDE);
  static const Color UNSELECTED_TEXT_CUSTOM_ROUNDED_TAB_BAR = BLACK_1A1A1A;

  //IconTitleSubtitle
  static const Color ICON_TITLE_SUBTITLE_BASE = Colors.transparent;
  static const Color ICON_TITLE_SUBTITLE_BORDER = Color(0xFFE6E6E6);
  static const Color ICON_TITLE_SUBTITLE_ICON_COLOR = Color(0xFFEB595F);
  static const Color ICON_TITLE_SUBTITLE_SUBTEXT = Color(0xFF666666);
  static const Color ICON_TITLE_SUBTITLE_TITLE_TEXT = BLACK_1A1A1A;

  //Input Field
  static const Color INPUT_FIELD_BORDER_COLOR = BLACK_1A1A1A;
  static const Color INPUT_FIELD_BG_COLOR = Color(0xFFFFFFFF);
  static const Color INPUT_FIELD_FOCUS_COLOR = BLACK_1A1A1A;
  static const Color INPUT_FIELD_HOVER_COLOR = Colors.transparent;
  static const Color INPUT_FIELD_ERROR_COLOR = Color(0xFFEB595F);
  static const Color INPUT_FIELD_CURSOR_COLOR = BLACK_1A1A1A;
  static const Color INPUT_FIELD_LABEL_STYLE_COLOR = BLACK_1A1A1A;
  static const Color INPUT_FIELD_HINT_STYLE_COLOR = BLACK_1A1A1A;
  static const Color INPUT_FIELD_TEXT_COLOR = BLACK_1A1A1A;

  //Expanding Card
  static const Color EXPANDING_CARD_BASE = Colors.transparent;
  static const Color EXPANDING_CARD_BORDER = Color(0xFFE6E6E6);
  static const Color EXPANDING_CARD_ICON = Color(0xFF676777);
  static const Color EXPANDING_CARD_DIVIDER_COLOR = Colors.transparent;
  static const Color EXPANDING_CARD_TEXT_COLOR = BLACK_1A1A1A;

  //RadioButton
  static const Color RADIO_BUTTON_SELECTED_COLOR = Color(0xFFEB595F);

  //RowIconTextAccessor
  static const Color ROW_ICON_TEXT_ACCESSOR_COLOR_BASE = Colors.white;
  static const Color ROW_ICON_TEXT_ACCESSOR_TEXT_COLOR = BLACK_1A1A1A;
  static const Color ROW_ICON_TEXT_ACCESSOR_SUBTEXT_COLOR = GREY_666666;

  //CountDownTimer
  static const Color COUNT_DOWN_TIMER_BORDER = Color(0xFFF8D7D4);
  static const Color COUNT_DOWN_TIMER_BOX = Color(0xFFFBEBEA);
  static const Color COUNT_DOWN_TIMER_GREY_BORDER = Color(0xFFE6E6E6);
  static const Color COUNT_DOWN_TIMER_ICON = Color(0xFFAF2D22);

  //RowKeyValue
  static const Color ROW_KEY_VALUE_SUBKEY_COLOR = GREY_666666;
  static const Color ROW_KEY_VALUE_KEY_COLOR = GREY_666666;
  static const Color ROW_KEY_VALUE_VALUE_COLOR = BLACK_1A1A1A;

  //CustomExpandedIcon
  static const Color CUSTOM_EXPANDED_ICON = Color(0xFFE6E6E6);

  //Custom Text Field //Expandable
  static const Color CUSTOM_TEXT_FIELD_FILL = Color(0xFFF5F4F8);
  static const Color CUSTOM_TEXT_FIELD_ERROR = Color(0xFFFD6A85);
  static const Color CUSTOM_TEXT_FIELD_FOCUSED = Color(0xFF6CD0B8);
  static const Color CUSTOM_TEXT_FIELD_TEXT = Color(0xFF34344C);
  static const Color CUSTOM_TEXT_FIELD_LABEL = Color(0xFF858594);
  static const Color CUSTOM_TEXT_FIELD_REQUIRED = Colors.red;

  //Horizontal Radio Group
  static const Color HORIZONTAL_RADIO_SELECTED = Color(0xFF23AA8B);
  static const Color HORIZONTAL_RADIO_TEXT_UNSELECTED = Color(0xFF858594);
  static const Color HORIZONTAL_RADIO_TEXT_SELECTED = Color(0xFF34344C);

  //Box Button
  static const Color BOX_BUTTON_TEXT = BLACK_1A1A1A;

  // Button Underlined
  static const Color BUTTON_UNDERLINED_TEXT = BLACK_1A1A1A;

  //chip view
  static const Color SELECTED_CHIP = Color(0XFFEC5f65);
  static const Color UNSELECTED_CHIP = BLACK_1A1A1A;
  static const Color CHIP_VIEW_BG = Color(0xFFCCCCCC);

  //Dotted Line
  static const Color DOTTED_LINE = Color(0xFFCCCCCC);

  //Primary Elevated button
  static const Color PRIMARY_ELEVATED_BUTTON_BG = APP_THEME;

  //Icon Rating Card
  static const Color ICON_RATING_1 = Color(0xFF666666);
  static const Color ICON_RATING_2 = Color(0xFFCCCCCC);
  static const Color CARD_BG = Color(0xFFF2F2F2);

  //Number Text Field
  static const Color NUMBER_TEXT_FIELD_TEXT = BLACK_1A1A1A;

  //AVATAR ALT TEXt
  static const Color ALT_AVATAR_BG = Color(0xFF4BA2B5);

  // General
  static const Color WHITE = Color(0xFFFFFFFF);
  static const Color BLACK = Color(0xFF000000);
  static const Color GREY = Color(0xFF676777);
  static const Color ERROR = Color(0xFFA20B00);
  static const Color OFF_WHITE_F4F4F5 = Color(0xFFF4F4F5);
  static const Color GREY_666666 = Color(0xFF666666);
  static const Color BLACK_1A1A1A = Color(0xFF1A1A1A);
  static const Color BASICWHITE = FigmaColors.COLOR_BASICWHITE_FCFCFC;
  static const Color BASICBLACK = FigmaColors.COLOR_BASICBLACK_0C0C1E;

  //Alert
  static const Color ALERT_INFO_LIGHT =
      FigmaColors.COLOR_SEMANTICINFO_LIGHT_E5F5FC;
  static const Color ALERT_INFO_BASE =
      FigmaColors.COLOR_SEMANTICINFO_BASE_017AAD;
  static const Color ALERT_SUCCESS_LIGHT =
      FigmaColors.COLOR_SEMANTICSUCCESS_LIGHT_EAF3EB;
  static const Color ALERT_SUCCESS_BASE =
      FigmaColors.COLOR_SEMANTICSUCCESS_BASE_29823B;
  static const Color ALERT_WARNING_LIGHT =
      FigmaColors.COLOR_SEMANTICWARNING_LIGHT_FDF4E5;
  static const Color ALERT_WARNING_BASE =
      FigmaColors.COLOR_SEMANTICWARNING_BASE_E99400;
  static const Color ALERT_ERROR_LIGHT =
      FigmaColors.COLOR_SEMANTICERROR_LIGHT_FCEAEA;
  static const Color ALERT_ERROR_BASE =
      FigmaColors.COLOR_SEMANTICERROR_BASE_DC2020;

  static const Color gray900 = Color(0xff14142b);
  //accodion
  static const Color ACCORDION_TITLE = FigmaColors.COLOR_NEUTRAL900_14142B;
  static const Color ACCORDION_CONTENT = FigmaColors.COLOR_NEUTRAL700_373751;

  //Checkbox
  static const Color CHECKBOX_DISABLE_COLOR =
      FigmaColors.COLOR_NEUTRAL400_9C9CAF;
  static const Color CHECKBOX_SELECTED_COLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color CHECKBOX_ERROR_BASE =
      FigmaColors.COLOR_SEMANTICERROR_BASE_DC2020;

  // DropDown
  static const Color DROP_DOWN_SEARCH_BORADER_COLOR =
      FigmaColors.COLOR_NEUTRAL500_6B6B80;
  static const Color DROP_DOWN_DISABLED_COLOR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color DROP_DOWN_BORADER = FigmaColors.COLOR_NEUTRAL500_6B6B80;
  static const Color DROP_DOWN_ERROR_BORADER =
      FigmaColors.COLOR_SEMANTICERROR_BASE_DC2020;

  //new figma colors
  //
  // static const Color white = Color(0xFFFFFFFF);
  // static const Color box_shadow = Color(0xffDDDDDD) ;

  // figma button colors
  static const Color PRIMARY_DEFAULT = FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color PRIMARY_FOCUSED = FigmaColors.COLOR_PRIMARY800_1E40AF;
  static const Color PRIMARY_ACTIVE = FigmaColors.COLOR_PRIMARY400_60A5FA;
  static const Color PRIMARY_CLICK = FigmaColors.COLOR_PRIMARY800_1E40AF;
  static const Color PRIMARY_DISABLED = FigmaColors.COLOR_PRIMARY100_DBEAFE;

  static const Color GHOST_DEFAULT = FigmaColors.COLOR_BASICWHITE_FCFCFC;
  static const Color GHOST_FOCUSED = FigmaColors.COLOR_PRIMARY50_EFF6FF;
  static const Color GHOST_ACTIVE = FigmaColors.COLOR_PRIMARY300_93C5FD;
  static const Color GHOST_CLICK = FigmaColors.COLOR_PRIMARY300_93C5FD;
  static const Color GHOST_DISABLED = FigmaColors.COLOR_PRIMARY100_DBEAFE;

  static const Color BORDERLESS_DEFAULT = FigmaColors.COLOR_BASICWHITE_FCFCFC;
  static const Color BORDERLESS_FOCUSED = FigmaColors.COLOR_PRIMARY50_EFF6FF;
  static const Color BORDERLESS_ACTIVE = FigmaColors.COLOR_PRIMARY300_93C5FD;
  static const Color BORDERLESS_CLICK = FigmaColors.COLOR_PRIMARY300_93C5FD;
  static const Color BORDERLESS_DISABLED = FigmaColors.COLOR_PRIMARY100_DBEAFE;

  static Map<String, Map<String, Color>> button = {
    "primary": {
      "Default": PRIMARY_DEFAULT,
      "focused": PRIMARY_FOCUSED,
      "active": PRIMARY_ACTIVE,
      "click": PRIMARY_CLICK,
      "disabled": PRIMARY_DISABLED
    },
    "ghost": {
      "Default": GHOST_DEFAULT,
      "focused": GHOST_FOCUSED,
      "active": GHOST_ACTIVE,
      "click": GHOST_CLICK,
      "disabled": GHOST_DISABLED,
    },
    "borderless": {
      "Default": BORDERLESS_DEFAULT,
      "focused": BORDERLESS_FOCUSED,
      "active": BORDERLESS_ACTIVE,
      "click": BORDERLESS_CLICK,
      "disabled": BORDERLESS_DISABLED
    },
  };
  static Color bgColorForAlert(AlertTypes alertTypes) {
    switch (alertTypes) {
      case AlertTypes.Error:
        return ALERT_ERROR_BASE;
      case AlertTypes.ErrorLight:
        return ALERT_ERROR_LIGHT;
      case AlertTypes.Info:
        return ALERT_INFO_BASE;
      case AlertTypes.InfoLight:
        return ALERT_INFO_LIGHT;
      case AlertTypes.Success:
        return ALERT_SUCCESS_BASE;
      case AlertTypes.SuccessLight:
        return ALERT_SUCCESS_LIGHT;
      case AlertTypes.Warning:
        return ALERT_WARNING_BASE;
      case AlertTypes.WarningLight:
        return ALERT_WARNING_LIGHT;
    }
  }

  static Color alertTextColor(AlertTypes alertTypes) {
    switch (alertTypes) {
      case AlertTypes.Error:
        return BASICWHITE;
      case AlertTypes.ErrorLight:
        return ALERT_ERROR_BASE;
      case AlertTypes.Info:
        return BASICWHITE;
      case AlertTypes.InfoLight:
        return ALERT_INFO_BASE;
      case AlertTypes.Success:
        return BASICWHITE;
      case AlertTypes.SuccessLight:
        return ALERT_SUCCESS_BASE;
      case AlertTypes.Warning:
        return BASICBLACK;
      case AlertTypes.WarningLight:
        return ALERT_WARNING_BASE;
    }
  }
//  figma colors for card molecule

  static const Color CARD_MOLECULE_BG = FigmaColors.COLOR_BASICWHITE_FCFCFC;
  static const Color CARD_MOLECULE_SHADOW = Color(0xffDDDDDD);

  // figma colors for input box
  static const Color INPUT_BOX_DISABLED_BG =
      FigmaColors.COLOR_NEUTRAL100_F3F3F6;
  static const Color INPUT_BOX_DISABLED_BORDER =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color INPUT_BOX_FOCUSED_BORDER =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color INPUT_BOX_ERROR_BORDER =
      FigmaColors.COLOR_SEMANTICERROR_BASE_DC2020;
  static const Color INPUT_BOX_ICON_COLOR = FigmaColors.COLOR_NEUTRAL400_9C9CAF;

  //figma colors for progress bar
  static const Color PROGRESS_BAR_BG_COLOR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color PROGRESS_BAR_COLOR = FigmaColors.COLOR_PRIMARY900_1E3A8A;

  // figma for breadcrumb

  static const Color BREADCRUMB_ACTIVE_COLOR =
      FigmaColors.COLOR_BASICBLACK_0C0C1E;
  static const Color BREADCRUMB_INACTIVE_COLOR =
      FigmaColors.COLOR_NEUTRAL500_6B6B80;

  // figma colors for switch

  static const Color SWITCH_ACTIVE_BG_COLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color SWITCH_DEFAULT_ICON_COLOR =
      FigmaColors.COLOR_BASICWHITE_FCFCFC;
  static const Color SWITCH_DEFAULT_BG_COLOR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color SWITCH_DISABLED_ICON_COLOR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color SWITCH_DISABLED_BG_COLOR =
      FigmaColors.COLOR_NEUTRAL100_F3F3F6;

  // figma styles for Rating

  static const Color RATING_GLOW_COLOR = Color(0xffFADB14);
  static const Color RATING_UNRATED_COLOR = Color(0xffE5E5EB);

  // figma colors for radio button

  static const Color RADIO_BUTTON_SELECTED_COLOUR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color RADIO_BUTTON_DISABLED_COLOUR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color RADIO_BUTTON_ERROR_COLOUR =
      FigmaColors.COLOR_SEMANTICERROR_BASE_DC2020;
  static const Color RADIO_BUTTON_DEFAULT_COLOR =
      FigmaColors.COLOR_NEUTRAL400_9C9CAF;

  // icon badge

  static const Color ICON_BADGE_COLOR = FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color ICON_BADGE_TEXT_COLOR =
      FigmaColors.COLOR_BASICWHITE_FCFCFC;

  //Accordion
  static const Color DIVIDER_COLOR = FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color BOARDER_COLOR = Color(0xffCED4DA);
  // figma colors for input number
  static const Color INPUT_NUMBER_DISABLED_BORDER_COLOR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color INPUT_NUMBER_FOCUSED_BORDER_COLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color INPUT_NUMBER_DISABLED_FILL_COLOR = Color(0xffE5E5EB);

  static const Color INPUT_NUMBER_ICONS_COLOR =
      FigmaColors.COLOR_NEUTRAL500_6B6B80;

  static const Color INPUT_NUMBER_ICON_BORDER_COLOR =
      FigmaColors.COLOR_NEUTRAL100_F3F3F6;
  static const Color INPUT_NUMBER_CURSOR_COLOR =
      FigmaColors.COLOR_NEUTRAL900_14142B;

  //figma colors for timeline
  static const Color TIMELINE_ICON_COLOR = FigmaColors.COLOR_BASICWHITE_FCFCFC;
  static const Color TIMELINE_BORDER_COLOR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color TIMELINE_COLOR = FigmaColors.COLOR_PRIMARY900_1E3A8A;

  //figma colors for tag
  static const Color TAG_BACKGROUND_COLOR = FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color TAG_ICON_COLOR = FigmaColors.COLOR_BASICWHITE_FCFCFC;
  //figma colors for range slider
  static const Color RANGE_SLIDER_INACTIVE_COLOR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color RANGE_SLIDER_ACTIVE_COLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;

  //figma colors for Tabs
  static const Color TABS_FILL_COLOR = FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color TABS_ACTIVE_BORDER_COLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color TABS_IN_ACTIVE_BORDER_COLOR = Color(0xffD1D1DB);
  static const Color TABS_ACTIVE_LABEL_COLOR =
      FigmaColors.COLOR_NEUTRAL800_1F1F37;
  static const Color TABS_IN_ACTIVE_LABEL_COLOR =
      FigmaColors.COLOR_NEUTRAL500_6B6B80;
  static const Color TABS_TEXT_COLOR_FILLED =
      FigmaColors.COLOR_BASICWHITE_FCFCFC;

  //Submenu
  static const Color SUBMENU_BG = FigmaColors.COLOR_BASICWHITE_FCFCFC;
  static const Color SUBMENU_HIGHLIGHT = FigmaColors.COLOR_PRIMARY900_1E3A8A;
  //Pagination

  static const Color PAGINATION_BUTTON_BG = FigmaColors.COLOR_BASICWHITE_FCFCFC;
  static const Color PAGINATION_INACTIVE_ICON =
      FigmaColors.COLOR_NEUTRAL400_9C9CAF;
  static const Color PAGINATION_INACTIVE_BUTTON_BORDER =
      FigmaColors.COLOR_NEUTRAL400_9C9CAF;
  static const Color PAGINATION_ACTIVE_BUTTON_BORDER =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;

  //LightBox
  static const Color LIGHTBOX_BACKGROUND = FigmaColors.COLOR_BASICBLACK_0C0C1E;
  static const Color LIGHTBOX_CONTROL_BOX = Color(0x33101213);


  //Table
  static const Color TABLE_ROW_BG = FigmaColors.COLOR_NEUTRAL50_F9F9FB;
  static const Color TABLE_BOARDER_COLOR = Color(0xffCED4DA);
  //figma colors for DatePicker
  static const Color DATE_PICKER_SELECTED_BG_COLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color DATE_PICKER_TODAY_DATE_BG_COLOR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color DATE_PICKER_FOOTER_TODAY_COLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color DATE_PICKER_YEAR_CELL_COLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color DATE_PICKER_RANGE_COLOR =
      FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color DATE_PICKER_INPUT_BORDER_COLOR =
      FigmaColors.COLOR_NEUTRAL400_9C9CAF;
  static const Color DATE_PICKER_EVENT_DOT_COLOR =
      FigmaColors.COLOR_PRIMARY900_1E3A8A;
  static const Color DATE_PICKER_SELECTED_COLOR =
      FigmaColors.COLOR_BASICWHITE_FCFCFC;

  // figma colors for avatar

  static const Color AVATAR_TEXT_BG = FigmaColors.COLOR_PRIMARY300_93C5FD;
  static const Color AVATAR_ICON_BG = FigmaColors.COLOR_NEUTRAL300_D1D1DB;
  static const Color AVATAR_BADGE_COLOR =
      FigmaColors.COLOR_SEMANTICERROR_BASE_DC2020;

  static const Color STEPS_INACTIVE_COLOR = FigmaColors.COLOR_NEUTRAL300_D1D1DB;

  // figma colors for chart
  static const Color CHART_STROKE_COLOR = FigmaColors.COLOR_BASICWHITE_FCFCFC;
}
