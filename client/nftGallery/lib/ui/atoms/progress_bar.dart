import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/automation_constants.dart';
import 'package:final_template/ui/custom_spacers.dart';
import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {

  final ProgressBarSizes progressBarSize ;
  final ProgressBarStyles progressBarStyle ;
  final double? dValue ;
  final Color? bgColor ;
  final Color? color ;
  final bool bShowLabel ;
  final String? strLabelText ;
  final double? dHeight ;
  final double? dBorderRadius ;
  final TextStyle? labelTextStyle ;

  const ProgressBar({
    Key? key,
    this.progressBarSize = ProgressBarSizes.Default,
    this.progressBarStyle = ProgressBarStyles.rounded,
    this.dValue,
    this.bgColor = AppColors.PROGRESS_BAR_BG_COLOR,
    this.color = AppColors.PROGRESS_BAR_COLOR,
    this.bShowLabel = false,
    this.strLabelText,
    this.dHeight,
    this.dBorderRadius,
    this.labelTextStyle,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.PROGRESS_BAR,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if(bShowLabel)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  strLabelText??"",
                  style: labelTextStyle ?? AppStyles.progressBarLabelTextStyle,

                ),
              ),
              CustomSpacers.width12,
              Text(
               ((dValue??0)*100).toString()+"%",
                style: labelTextStyle ?? AppStyles.progressBarLabelTextStyle,
              )
            ],
          ),
          if(bShowLabel)
            CustomSpacers.height8,
          SizedBox(
            height: dHeight ?? MapProgressBarSizes(progressBarSize),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(dBorderRadius??MapProgressBarStylesBorderRadius(progressBarStyle)),
              child: LinearProgressIndicator(
                value: dValue,
                color: color,
                backgroundColor: bgColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
