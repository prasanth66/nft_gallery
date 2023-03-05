import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/automation_constants.dart';
import 'package:flutter/material.dart';

class Accordion extends StatelessWidget {
  final String? strTitle;
  final String? strContent;
  final String? strSubHeading;
  final TextStyle? titleTextStyle;
  final TextStyle? contentTextStyle;
  final TextStyle? subHeadingTextStyle;
  final Widget? expandeIcon;
  final Widget? collapaseIcon;
  final Color? dividerColor;
  final double? dividerHeight;

  const Accordion({
    Key? key,
    required this.strTitle,
    this.strSubHeading,
    this.strContent,
    this.titleTextStyle,
    this.contentTextStyle,
    this.subHeadingTextStyle,
    required this.expandeIcon,
    this.collapaseIcon,
    this.dividerColor = AppColors.BLACK,
    this.dividerHeight = AppValues.DIVIDER_HEIGHT,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.ACCORDION,
      child: Material(
        color: Colors.transparent,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.BOARDER_COLOR),
          ),
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: ExpansionTile(
              title: Container(
                padding: const EdgeInsets.only(
                  top: AppValues.TITLE_VERTICAL_PADDING,
                  bottom: AppValues.TITLE_VERTICAL_PADDING,
                ),
                child: Text(
                  strTitle!,
                  style: titleTextStyle ?? AppStyles.accordionTitleText,
                ),
              ),
              trailing: Container(
                  padding: const EdgeInsets.only(
                    top: AppValues.TITLE_VERTICAL_PADDING,
                    bottom: AppValues.TITLE_VERTICAL_PADDING,
                  ),
                  child: expandeIcon),
              children: [
                Divider(
                  thickness: dividerHeight,
                  color: dividerColor,
                ),
                if (strSubHeading!.isNotEmpty)
                  Container(
                    padding: const EdgeInsets.only(
                      left: AppValues.HORIZONTAL_PADDING,
                      right: AppValues.HORIZONTAL_PADDING,
                      top: AppValues.SUBHEADING_VERTICAL_PADDING,
                    ),
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            strSubHeading ?? "",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: subHeadingTextStyle ??
                                AppStyles.accordionSubHeading,
                          ),
                        ),
                        collapaseIcon ??
                            Container(
                              height: AppValues.IMAGE_SIZE_UP_HEIGHT,
                              width: AppValues.IMAGE_SIZE_UP_WIDTH,
                              alignment: Alignment.center,
                              child: Image.asset(
                                AppImages.ACCORDION_UP_ARROW,
                              ),
                            ),
                      ],
                    ),
                  )
                else
                  Container(),
                Container(
                  padding: const EdgeInsets.only(
                    left: AppValues.HORIZONTAL_PADDING,
                    right: AppValues.HORIZONTAL_PADDING,
                    top: AppValues.CONTENT_VERTICAL_PADDING,
                    bottom: AppValues.VERTICAL_PADDING,
                  ),
                  child: Text(
                    strContent!,
                    style: contentTextStyle ?? AppStyles.accordionContent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
