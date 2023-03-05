import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/atoms/button.dart';
import 'package:final_template/ui/custom_spacers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants/figma_colors.dart';
import '../../core/constants/figma_styles.dart';
import '../automation_constants.dart';

class PopOver extends StatelessWidget {
  final PopOverTypes popOverType;
  final String? title;
  final String content;
  final String? textPositiveButton;
  final String? textNegativeButton;
  final String? textNeutralButton;
  final Function? onClose;
  final Function? positiveButtonCLick;
  final Function? negativeButtonCLick;
  final Function? neutralButtonCLick;

  const PopOver({
    Key? key,
    required this.popOverType,
    this.title = "",
    required this.content,
    this.textPositiveButton = "",
    this.textNegativeButton = "",
    this.textNeutralButton = "",
    this.onClose,
    this.positiveButtonCLick,
    this.negativeButtonCLick,
    this.neutralButtonCLick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.POP_OVER,
      child: Container(
        width: 344,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: FigmaColors.COLOR_BASICWHITE_FCFCFC,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 18.0, //soften the shadow
              offset: Offset(0, 9),
            )
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if ((popOverType == PopOverTypes.Type1 || popOverType == PopOverTypes.Type3) && title!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title!,
                        style: FigmaStyles.bodytextbasefontBoldneutral800,
                      ),
                    ),
                    CustomSpacers.width16,
                    InkWell(
                      onTap: () {
                        if (onClose != null) {
                          onClose!();
                        }
                      },
                      child: SvgPicture.asset(
                        AppImages.CLOSE_ICON,
                        height: 18,
                        width: 18,
                      ),
                    )
                  ],
                ),
              ),
            if (title!.isNotEmpty)
              const Divider(
                height: 1,
              ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 24),
                child: Text(
                  content,
                  style: FigmaStyles.bodysmalltextSmfont_normalneutral800,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            if (popOverType != PopOverTypes.Type1 && popOverType != PopOverTypes.Type4)
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    if (textNeutralButton!.isNotEmpty)
                      Button(
                        strButtonText: textNeutralButton ?? "",
                        buttonAction: () {
                          if (neutralButtonCLick != null) {
                            neutralButtonCLick!();
                          }
                        },
                        dCornerRadius: 5.0,
                        size: ButtonSize.medium,
                        type: ButtonType.borderless,
                      ),
                    const Spacer(),
                    if (textNegativeButton!.isNotEmpty)
                      Button(
                        strButtonText: textNegativeButton ?? "",
                        buttonAction: () {
                          if (negativeButtonCLick != null) {
                            negativeButtonCLick!();
                          }
                        },
                        dCornerRadius: 5.0,
                        size: ButtonSize.medium,
                        type: ButtonType.ghost,
                      ),
                    CustomSpacers.width8,
                    if (textPositiveButton!.isNotEmpty)
                      Button(
                        strButtonText: textPositiveButton ?? "",
                        buttonAction: () {
                          if (positiveButtonCLick != null) {
                            positiveButtonCLick!();
                          }
                        },
                        dCornerRadius: 5.0,
                        size: ButtonSize.medium,
                        type: ButtonType.primary,
                      ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
