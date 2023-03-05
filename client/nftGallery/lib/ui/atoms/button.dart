import 'package:easy_debounce/easy_debounce.dart';
import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/automation_constants.dart';
import 'package:final_template/ui/custom_spacers.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String strButtonText;
  final VoidCallback buttonAction;
  final double dCornerRadius;
  final Color borderColor;
  final bool bIcon;
  final bool bIconLeft; // By default left will be true
  final Widget? buttonIcon;
  final EdgeInsets? padding;
  final int debounceDuration;
  final double? width;

  final ButtonType type;
  final ButtonSize size ;
  final ButtonState state ;
  final bool bIconOnly ;
  final TextStyle? textStyle;

  const Button({
    Key? key,
    required this.strButtonText,
    required this.buttonAction,
    this.dCornerRadius = AppValues.PRIMARY_BUTTON_CORNER_RADIUS,
    this.borderColor = AppColors.PRIMARY_BUTTON_BORDERCOLOR,
    this.bIconLeft = true,
    this.bIcon = false,
    this.buttonIcon,
    this.padding,
    this.debounceDuration = 0,
    this.width ,

    this.type = ButtonType.primary,
    this.size = ButtonSize.normal,
    this.bIconOnly = false,
    this.state = ButtonState.Default,
    this.textStyle,
  }) : super(key: key);

  factory Button.icon(
      {String strButtonText = '',
        required VoidCallback buttonAction,
        required bool bIconLeft,
        Color borderColor = Colors.transparent,
        required Widget? icon,
        required Color bgColor,
        TextStyle? textStyle,
        double dCornerRadius = AppValues.PRIMARY_BUTTON_CORNER_RADIUS}) {
    return Button(
        strButtonText:strButtonText,
        buttonAction: buttonAction,
        buttonIcon: icon,
        bIconLeft: bIconLeft,
        bIcon: true,
        dCornerRadius: dCornerRadius,
        borderColor: borderColor);
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.BUTTON,
      child: Material(
        color: Colors.transparent,
        child: Ink(
            width: width,
            decoration: BoxDecoration(
              color : AppColors.button[type.toString().split('.').last]![state.toString().split('.').last],
              borderRadius: BorderRadius.circular(dCornerRadius),
              border: (type == (ButtonType.borderless) || (state == ButtonState.disabled) )?null:Border.all(color: borderColor, width: 1),
            ),
            child: InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(dCornerRadius),
              ),
              onTap: (state == ButtonState.disabled)
                  ? null
                  : () {
                EasyDebounce.debounce(
                    AppStrings.STRING_DEBOUNCE_PRIMARY_BUTTON,
                    Duration(milliseconds: debounceDuration), () {
                  buttonAction();
                });
              },
              child: Padding(
                padding: padding ??
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    if (bIcon == true && bIconLeft == true)
                      Container(color: Colors.transparent, child: buttonIcon!),
                    if (bIcon == true && bIconLeft == true && !bIconOnly) ...[
                      CustomSpacers.width8,
                    ],
                    if (strButtonText.isNotEmpty && !bIconOnly)
                      Text(strButtonText,
                        style: textStyle ?? AppStyles.buttonTextStyle(
                            style:type.toString().split('.').last,
                            size:size.toString().split('.').last,
                            state:state.toString().split('.').last),
                      ),
                    if (bIcon == true &&
                        bIconLeft == false && !bIconOnly)
                      CustomSpacers.width8,

                    if (bIcon == true && bIconLeft == false) buttonIcon!,
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
