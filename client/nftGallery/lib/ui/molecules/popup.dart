import 'package:final_template/app_imports.dart';
import 'package:final_template/core/constants/figma_styles.dart';
import 'package:final_template/ui/atoms/button.dart';
import 'package:flutter/material.dart';

class PopUp extends StatelessWidget {
  final PopUpTypes popUpType;
  final String title;
  final String content;
  final Widget? icon;

  const PopUp({
    Key? key,
    required this.popUpType,
    required this.title,
    required this.content,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          SizedBox(width: 20, child: icon ?? iconForPopUpType(popUpType)),
          const SizedBox(width: 20),
          Flexible(
              child: Text(
            title,
            style: FigmaStyles.bodytextbasefontBoldneutral800,
          )),
        ],
      ),
      content: Row(
        children: [
          const SizedBox(width: 40),
          Flexible(
              child: Text(
            content,
            style: FigmaStyles.bodysmalltextSmfont_normalneutral800,
          )),
        ],
      ),
      actions: <Widget>[
        if (popUpType == PopUpTypes.Delete)
          Button(
              buttonAction: () {
                Navigator.pop(context, 'OK');
              },
              type: ButtonType.ghost,
              size: ButtonSize.extraSmall,
              state: ButtonState.Default,
              strButtonText: "No"),
        Button(
            buttonAction: () {
              Navigator.pop(context, 'OK');
            },
            type: ButtonType.primary,
            size: ButtonSize.extraSmall,
            state: ButtonState.Default,
            strButtonText: "Yes"),
      ],
    );
  }

  Widget iconForPopUpType(PopUpTypes popUpType) {
    switch (popUpType) {
      case PopUpTypes.Delete:
        return const Icon(
          Icons.info_outline,
          color: AppColors.ALERT_WARNING_BASE,
        );

      case PopUpTypes.Info:
        return const Icon(
          Icons.info_outline,
          color: AppColors.ALERT_INFO_BASE,
        );

      case PopUpTypes.Error:
        return const Icon(
          Icons.cancel_outlined,
          color: AppColors.ALERT_ERROR_BASE,
        );

      case PopUpTypes.Warning:
        return const Icon(
          Icons.info_outline,
          color: AppColors.ALERT_WARNING_BASE,
        );

      case PopUpTypes.Success:
        return const Icon(
          Icons.check_circle_outlined,
          color: AppColors.ALERT_SUCCESS_BASE,
        );
    }
  }
}
