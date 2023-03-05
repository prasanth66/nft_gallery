// Styles to be picked from whatever is mentioned in Themes.
// If we need styles beyond themes, only then use this file
//==========================================================
import 'package:final_template/core/constants/figma_styles.dart';
import 'package:flutter/material.dart';

import '../../app_imports.dart';
import 'figma_colors.dart';

class AppStyles {
  static const TextStyle styleForAppName = TextStyle(
    fontSize: 25,
    color: Colors.white,
  );

  static const TextStyle stylePrimaryButton = TextStyle(
    fontSize: 20,
    color: Colors.black,
  );

  static const TextStyle styleSecondaryButton = TextStyle(
    fontSize: 20,
    color: Colors.black,
  );

  static const TextStyle styleText = TextStyle(
    fontSize: 20,
    color: Colors.black,
  );

  //PopupDialog Message Style
  static const messageStyle = TextStyle(
      fontSize: 14,
      color: AppColors.POPUP_DIALOG_TEXT_COLOR,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.7,
      decoration: TextDecoration.none,
      height: 1.5);

  //PopupDialog
  static const TextStyle titleStyle = TextStyle(
      fontSize: 16,
      color: AppColors.POPUP_DIALOG_TEXT_COLOR,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.5,
      decoration: TextDecoration.none,
      height: 1.5);

  static const toastMessageStyle = TextStyle(
    fontSize: 12,
    color: AppColors.TOAST_MESSAGE_STYLE,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.4,
  );

  //IconTitleSubtitle
  static const styleTitle = TextStyle(
      fontSize: 14,
      color: AppColors.ICON_TITLE_SUBTITLE_TITLE_TEXT,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.7,
      decoration: TextDecoration.none,
      height: 1.5);

  static const styleSubtitle = TextStyle(
      fontSize: 12,
      color: AppColors.ICON_TITLE_SUBTITLE_SUBTEXT,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.2,
      decoration: TextDecoration.none,
      height: 2);

  static const TextStyle inputFieldTextStyle = TextStyle(
      fontSize: 14,
      color: AppColors.INPUT_FIELD_TEXT_COLOR,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.2,
      height: 1.5,
      decoration: TextDecoration.none);

  //Expanding card
  static const expandingCardTitleStyle = TextStyle(
      fontSize: 16,
      color: AppColors.EXPANDING_CARD_TEXT_COLOR,
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.normal,
      fontFamily: 'Gilroy',
      letterSpacing: 0.2,
      height: 1.2);

  static const expandingCardSubtitleStyle = TextStyle(
      fontSize: 14,
      color: AppColors.EXPANDING_CARD_TEXT_COLOR,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: "SF-Pro-Text-Regular",
      letterSpacing: 0.7,
      decoration: TextDecoration.none,
      height: 1.5);

  //RowIconTextAccessor
  static const rowIconTextAccessortextStyle = TextStyle(
    fontSize: 14,
    color: AppColors.ROW_ICON_TEXT_ACCESSOR_TEXT_COLOR,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.7,
    decoration: TextDecoration.none,
    height: 1.5,
  );

  //RowKeyValue
  static const rowKeyValueStyleSubKey = TextStyle(
    fontSize: 12,
    color: AppColors.ROW_KEY_VALUE_SUBKEY_COLOR,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.4,
  );

  static const rowKeyValueStyleKey = TextStyle(
      fontSize: 14,
      color: AppColors.ROW_KEY_VALUE_KEY_COLOR,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.4,
      height: 1.5);

  static const rowKeyValueStyleValue = TextStyle(
      fontSize: 14,
      color: AppColors.ROW_KEY_VALUE_VALUE_COLOR,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.7,
      decoration: TextDecoration.none,
      height: 1.5);

  //Custom Text Field
  static TextStyle textFieldInputStyle = const TextStyle(
    color: AppColors.CUSTOM_TEXT_FIELD_TEXT,
    fontSize: 14.0,
    letterSpacing: 1.2,
    fontWeight: FontWeight.w500,
  );

  static TextStyle textFieldErrorStyle = const TextStyle(
    color: AppColors.CUSTOM_TEXT_FIELD_ERROR,
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
  );

  static TextStyle customTextFieldLabel = const TextStyle(
      color: AppColors.CUSTOM_TEXT_FIELD_LABEL,
      fontSize: 14.0,
      fontWeight: FontWeight.w400);

  //Horizontal Radio Group
  static TextStyle unselectedText = const TextStyle(
      color: AppColors.HORIZONTAL_RADIO_TEXT_UNSELECTED,
      fontWeight: FontWeight.w500,
      fontSize: 12);

  static TextStyle selectedText = const TextStyle(
      color: AppColors.HORIZONTAL_RADIO_TEXT_SELECTED,
      fontWeight: FontWeight.w500,
      fontSize: 12.0);

  //Box Button
  static const TextStyle styleBoxButtonText = TextStyle(
    fontSize: 14,
    color: AppColors.BOX_BUTTON_TEXT,
    fontStyle: FontStyle.normal,
  );

  //Button Underlined
  static const TextStyle buttonUnderlinedText = TextStyle(
      fontSize: 14,
      color: AppColors.BUTTON_UNDERLINED_TEXT,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.2,
      height: 1.5,
      decoration: TextDecoration.none);

  //Number Text Field
  static const TextStyle numberFieldInputStyle = TextStyle(
      fontSize: 14,
      color: AppColors.BLACK_1A1A1A,
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      letterSpacing: 0.2,
      height: 1.5,
      decoration: TextDecoration.none);

  static const TextStyle numberFieldSubHeading = TextStyle(
      fontSize: 12,
      color: AppColors.GREY,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal);

  static TextStyle altAvatarText = const TextStyle(
      color: AppColors.WHITE, fontSize: 24.0, fontWeight: FontWeight.w500);

  //Checkbox
  static TextStyle checkboxTextStyle = const TextStyle(
    fontSize: 14,
    decoration: TextDecoration.none,
    fontStyle: FontStyle.normal,
    color: AppColors.BLACK,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
  );
  static TextStyle checkboxError =
      FigmaStyles.bodysmalltextSmfont_normalsemanticerror_base;

  // DropDown
  static TextStyle dropDownItemTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral800;
  static TextStyle searchTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral600;
  static TextStyle labelTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral700;
  static TextStyle dropDownErrorTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalsemanticerror_base;

  //figma new  styles

  // static TextStyle bodySmallTextSmallFontSemiBold = FigmaTextStyles.bodysmalltextsmfontsemibold ;
  // static TextStyle bodySmallTextSmallFontNormal = FigmaTextStyles.bodysmalltextsmfontnormal.copyWith(color: FigmaColors.neutral500);
  //

  //style for button primary

  static TextStyle buttonPrimaryDefaultNormal =
      FigmaStyles.h5textxlfontSemiboldbasicwhite;
  static TextStyle buttonPrimaryDefaultMedium =
      FigmaStyles.bodytextbasefontSemiboldbasicwhite;
  static TextStyle buttonPrimaryDefaultSmall =
      FigmaStyles.bodysmalltextSmfont_semiboldbasicwhite;
  static TextStyle buttonPrimaryDefaultExtraSmall =
      FigmaStyles.bodysmalltextSmfont_semiboldbasicwhite;

  static TextStyle buttonPrimaryDisabledNormal =
      FigmaStyles.h5textxlfontSemiboldprimary300;
  static TextStyle buttonPrimaryDisabledMedium =
      FigmaStyles.bodytextbasefontSemiboldprimary300;
  static TextStyle buttonPrimaryDisabledSmall =
      FigmaStyles.bodysmalltextSmfont_semiboldprimary300;
  static TextStyle buttonPrimaryDisabledExtraSmall =
      FigmaStyles.bodysmalltextSmfont_semiboldprimary300;

  static TextStyle accordionTitleText =
      FigmaStyles.h6textlgfontNormalneutral900;
  static TextStyle accordionSubHeading =
      FigmaStyles.h6textlgfontMediumneutral900;
  static TextStyle accordionContent =
      FigmaStyles.bodysmalltextSmfont_normalneutral700;

  // style for button ghost

  static TextStyle buttonGhostDefaultNormal =
      FigmaStyles.h5textxlfontSemiboldprimary900;
  static TextStyle buttonGhostDefaultMedium =
      FigmaStyles.bodytextbasefontSemiboldprimary900;
  static TextStyle buttonGhostDefaultSmall =
      FigmaStyles.bodysmalltextSmfont_semiboldprimary900;
  static TextStyle buttonGhostDefaultExtraSmall =
      FigmaStyles.bodysmalltextSmfont_semiboldprimary900;

  static TextStyle buttonGhostFocusedNormal =
      FigmaStyles.h5textxlfontSemiboldprimary800;
  static TextStyle buttonGhostFocusedMedium =
      FigmaStyles.bodytextbasefontSemiboldprimary800;
  static TextStyle buttonGhostFocusedSmall =
      FigmaStyles.bodysmalltextSmfont_semiboldprimary800;
  static TextStyle buttonGhostFocusedExtraSmall =
      FigmaStyles.bodysmalltextSmfont_semiboldprimary800;

  static TextStyle alertTextStyle({required Color cAlertTextColor}) {
    return TextStyle(
      fontSize: 14,
      color: cAlertTextColor,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      height: 20 / 14,
      letterSpacing: 0,
    );
  }
  // mapping for button textstyle

  static TextStyle buttonTextStyle(
      {required String style, required String size, required String state}) {
    if (size == (ButtonSize.normal.toString().split('.').last)) {
      return buttonNormalTextColor(style: style, state: state);
    } else if (size == (ButtonSize.medium.toString().split('.').last)) {
      return buttonMediumTextColor(style: style, state: state);
    } else if (size == (ButtonSize.small.toString().split('.').last)) {
      return buttonSmallTextColor(style: style, state: state);
    } else {
      return buttonExtraSmallTextColor(style: style, state: state);
    }
  }

  static TextStyle buttonNormalTextColor(
      {required style, required String state}) {
    if (style == ButtonType.primary.toString().split('.').last) {
      if (state == ButtonState.disabled.toString().split('.').last) {
        return buttonPrimaryDisabledNormal;
      }
      return buttonPrimaryDefaultNormal;
    } else {
      if (state == ButtonState.disabled.toString().split('.').last) {
        return buttonPrimaryDisabledNormal;
      } else if (state == ButtonState.Default.toString().split('.').last) {
        return buttonGhostDefaultNormal;
      }
      return buttonGhostFocusedNormal;
    }
  }

  static TextStyle buttonMediumTextColor(
      {required style, required String state}) {
    if (style == ButtonType.primary.toString().split('.').last) {
      if (state == ButtonState.disabled.toString().split('.').last) {
        return buttonPrimaryDisabledMedium;
      }
      return buttonPrimaryDefaultMedium;
    } else {
      if (state == ButtonState.disabled.toString().split('.').last) {
        return buttonPrimaryDisabledMedium;
      } else if (state == ButtonState.Default.toString().split('.').last) {
        return buttonGhostDefaultMedium;
      }
      return buttonGhostFocusedMedium;
    }
  }

  static TextStyle buttonSmallTextColor(
      {required style, required String state}) {
    if (style == ButtonType.primary.toString().split('.').last) {
      if (state == ButtonState.disabled.toString().split('.').last) {
        return buttonPrimaryDisabledSmall;
      }
      return buttonPrimaryDefaultSmall;
    } else {
      if (state == ButtonState.disabled.toString().split('.').last) {
        return buttonPrimaryDisabledSmall;
      } else if (state == ButtonState.Default.toString().split('.').last) {
        return buttonGhostDefaultSmall;
      }
      return buttonGhostFocusedSmall;
    }
  }

  static TextStyle buttonExtraSmallTextColor(
      {required style, required String state}) {
    if (style == ButtonType.primary.toString().split('.').last) {
      if (state == ButtonState.disabled.toString().split('.').last) {
        return buttonPrimaryDisabledExtraSmall;
      }
      return buttonPrimaryDefaultExtraSmall;
    } else {
      if (state == ButtonState.disabled.toString().split('.').last) {
        return buttonPrimaryDisabledExtraSmall;
      } else if (state == ButtonState.Default.toString().split('.').last) {
        return buttonGhostDefaultExtraSmall;
      }
      return buttonGhostFocusedExtraSmall;
    }
  }

  // figma styles for heading

  static Map<String, TextStyle> headingStyle = {
    "h1": FigmaStyles.h1text5xlfontBlackprimary900,
    "h2": FigmaStyles.h2text4xlfontBlackprimary900,
    "h3": FigmaStyles.h3text3xlfontBlackprimary900,
    "h4": FigmaStyles.h4text2xlfontBlackprimary900,
    "h5": FigmaStyles.h5textxlfontBlackprimary900,
    "h6": FigmaStyles.h6textlgfontBlackprimary900,
  };

  // figma styles for input box
  static TextStyle inputBoxFocusedTextStyle =
      FigmaStyles.bodytextbasefontNormalneutral900;
  static TextStyle inputBoxDisabledTextStyle =
      FigmaStyles.bodytextbasefontNormalneutral500;
  static TextStyle inputBoxLabelStyle =
      FigmaStyles.bodytextbasefontNormalneutral900;
  static TextStyle inputBoxPlaceHolderStyle =
      FigmaStyles.bodytextbasefontNormalneutral400;

  // figma styles for animated input labe

  static TextStyle animatedInputLabelStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral600;
  static TextStyle animatedInputLabelDisabledStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral300;
  static TextStyle animatedInputLabelFocusedTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral900;

  // figma styles for Progress bar

  static TextStyle progressBarLabelTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral800;

  // figma styles for breadcrumb

  static TextStyle breadCrumbActiveTextStyle = FigmaStyles.h6textLgfont_normal
      .copyWith(color: FigmaColors.COLOR_BASICBLACK_0C0C1E);
  static TextStyle breadCrumbInActiveTextStyle = FigmaStyles.h6textLgfont_normal
      .copyWith(color: FigmaColors.COLOR_NEUTRAL500_6B6B80);
  static TextStyle breadCrumbSeparatorStyle = FigmaStyles.h6textLgfont_normal
      .copyWith(color: FigmaColors.COLOR_NEUTRAL500_6B6B80);

  //H6/text-lg/font-normal

  //figma styles for radio button

  static TextStyle radioButtonUnActiveTextStyle =
      FigmaStyles.bodySmalltext_smfont_normal;
  static TextStyle radioButtonActiveTextStyle =
      FigmaStyles.bodySmalltext_smfont_normal;
  static TextStyle radioButtonErrorTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalsemanticerror_base;

  //figma styles for input number

  static TextStyle inputNumberTextStyle(bool disabled,bool isFocused, InputNumberSizes size) {
    TextStyle textStyle;
    if (size == InputNumberSizes.small || size == InputNumberSizes.medium) {
      textStyle = FigmaStyles.bodysmalltextSmfont_normalneutral800;
    } else {
      textStyle = FigmaStyles.bodytextbasefontNormalneutral800;
    }

    return disabled
        ? textStyle.copyWith(color: FigmaColors.COLOR_NEUTRAL400_9C9CAF)
        : isFocused?textStyle:textStyle.copyWith(color: FigmaColors.COLOR_NEUTRAL300_D1D1DB);
  }

  //figma styles for timeline
  static TextStyle timelineDateStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral500;
  static TextStyle timelineItemStyle =
      FigmaStyles.bodysmalltextSmfont_mediumneutral900;
  static TextStyle timelineDescriptionStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral500;

  //figma styles for tag
  static TextStyle tagMediumTextStyle =
      FigmaStyles.bodytextbasefontMediumbasicwhite;
  static TextStyle tagDefaultTextStyle =
      FigmaStyles.bodysmalltextSmfont_mediumbasicwhite;
  static TextStyle tagSmallTextStyle =
      FigmaStyles.captiontextxsfontMediumbasicwhite;

  //figma styles for tabs
  static TextStyle tabsActiveTextStyle =
      FigmaStyles.bodysmalltextSmfont_mediumneutral800;
  static TextStyle tabsInActiveTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral500;

  //figma styles for chart
  static TextStyle chartTitleStyle = const TextStyle(fontWeight: FontWeight.w500,fontSize: 22,color: FigmaColors.COLOR_NEUTRAL900_14142B);
  static TextStyle chartAxisTextStyle = const TextStyle(fontWeight:FontWeight.w400,fontSize: 12,color: FigmaColors.COLOR_NEUTRAL800_1F1F37);

  //Sub Menu
  static TextStyle subMenuTitle =
      FigmaStyles.bodysmalltextSmfont_normalneutral900;
  static TextStyle subTitle = FigmaStyles.captiontextxsfontNormalneutral400;
  static TextStyle menuTitle = FigmaStyles.bodysmalltextSmfont_normalneutral900;
  static TextStyle expandedMenuTitle =
      FigmaStyles.bodysmalltextSmfont_normalprimary900;

  //lightbox
  static TextStyle lightboxIndexCountText =
      FigmaStyles.bodysmalltextSmfont_normalbasicwhite;
  //pagination

  static TextStyle paginationTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral900;

  //figma styles for datePicker
  static TextStyle datePickerDisabledDatesStyle = FigmaStyles
      .bodysmalltextSmfont_normalneutral600
      .copyWith(decoration: TextDecoration.lineThrough);
  static TextStyle datePickerHeaderStyle =
      FigmaStyles.bodysmalltextSmfont_normalprimary900;
  static TextStyle datePickerHeaderWeeksStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral600;
  static TextStyle datePickerSelectedDayStyle =
      FigmaStyles.bodysmalltextSmfont_normalbasicwhite;
  static TextStyle datePickerTodayDateStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral900;
  static TextStyle datePickerLabelStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral700;
  static TextStyle datePickerInputTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral900;
  static TextStyle datePickerNormalDateTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral900;

  //figma styles for avatar
  static TextStyle badgeTextStyle =
      FigmaStyles.bodysmalltextSmfont_normalbasicwhite;
  static TextStyle avatarTextStyle(AvatarSize size) {
    if (size == AvatarSize.medium) {
      return FigmaStyles.bodytextbasefontBlackprimary900;
    } else if (size == AvatarSize.large) {
      return FigmaStyles.h5textxlfontMediumprimary900;
    } else if (size == AvatarSize.extraLarge) {
      return FigmaStyles.h4text2xlfontMediumprimary900;
    } else {
      return FigmaStyles.bodysmalltextSmfont_normalprimary900;
    }
  }

  //styles for steps

  static TextStyle stepsPastStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral900;
  static TextStyle stepsActiveStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral900;
  static TextStyle stepsNextStyle =
      FigmaStyles.bodysmalltextSmfont_normalneutral900;

  // styles for card
  static TextStyle cardHeadingTextStyle = const TextStyle(fontWeight: FontWeight.w700,fontSize: 14,color: Color(0xff000000))  ;
  static TextStyle cardSecondaryTextStyle = const TextStyle(fontWeight: FontWeight.w400,fontSize: 14,color: Color(0xff999CA0))  ;

  // Table
   static TextStyle columnHeadingStyle = FigmaStyles.bodysmalltextSmfont_mediumneutral800;

}
