import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/automation_constants.dart';
import 'package:flutter/material.dart';

class AlertMessages extends StatelessWidget {
  final String strAlertMessage;
  final double dCornerradius;
  final String? strIconData;
  final AlertTypes alertTypes;
  final double dAlertBoxHeight;

  const AlertMessages(
      {Key? key,
      required this.strAlertMessage,
      this.strIconData = "",
      this.dAlertBoxHeight = AppValues.ALERT_MESSAGES_BOX_HEIGHT,
      this.dCornerradius = AppValues.ALERT_MESSAGES_CORNER_RADIUS,
      required this.alertTypes})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.ALERT_MESSAGES,
      child: Container(
        height: dAlertBoxHeight,
        padding: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.bgColorForAlert(alertTypes),
          ),
          borderRadius: BorderRadius.circular(
            dCornerradius,
          ),
          color: AppColors.bgColorForAlert(alertTypes),
        ),
        child: Row(
          children: [
            Container(
              color: Colors.transparent,
              child: imageForAlertType(alertTypes, strIconData!),
              padding: const EdgeInsets.only(right: 10),
            ),
            Flexible(
              child: Text(
                strAlertMessage,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: AppStyles.alertTextStyle(
                    cAlertTextColor: AppColors.alertTextColor(alertTypes)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget imageForAlertType(AlertTypes alertTypes, String strIconData) {
    switch (alertTypes) {
      case AlertTypes.Error:
        return strIconData == ""
            ? Image.asset("assets/images/white_error_icon.png")
            : Image.asset(strIconData);
      case AlertTypes.ErrorLight:
        return strIconData == ""
            ? Image.asset("assets/images/red_error_icon.png")
            : Image.asset(strIconData);
      case AlertTypes.Info:
        return strIconData == ""
            ? Image.asset("assets/images/white_info_icon.png")
            : Image.asset(strIconData);
      case AlertTypes.InfoLight:
        return strIconData == ""
            ? Image.asset("assets/images/blue_info_icon.png")
            : Image.asset(strIconData);
      case AlertTypes.Success:
        return strIconData == ""
            ? Image.asset("assets/images/white_tick_icon.png")
            : Image.asset(strIconData);
      case AlertTypes.SuccessLight:
        return strIconData == ""
            ? Image.asset("assets/images/green_tick_icon.png")
            : Image.asset(strIconData);
      case AlertTypes.Warning:
        return strIconData == ""
            ? Image.asset("assets/images/black_info_icon.png")
            : Image.asset(strIconData);
      case AlertTypes.WarningLight:
        return strIconData == ""
            ? Image.asset("assets/images/yellow_info_icon.png")
            : Image.asset(strIconData);
    }
  }
}
