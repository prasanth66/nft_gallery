import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/automation_constants.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_values.dart';

class AnimatedInputLabel extends StatelessWidget {

  final InputState inputState ;
  final String strLabelTitle ;
  final TextEditingController controller ;
  final TextStyle? textStyle;
  final bool bAutoFocus;
  final InputDecoration? inputDecoration;
  final String? strErrorMessage ;
  final TextStyle? labelTextStyle ;

  const AnimatedInputLabel({
    Key? key,
    this.inputState = InputState.Default,
    required this.strLabelTitle ,
    required this.controller,
    this.textStyle,
    this.bAutoFocus = false,
    this.inputDecoration,
    this.strErrorMessage  ,
    this.labelTextStyle ,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.ANIMATED_INPUT_LABEL,
      child: TextField(
        controller: controller,
        autofocus: bAutoFocus,
        style: textStyle??
           ( (inputState == InputState.disabled)
               ?AppStyles.animatedInputLabelDisabledStyle
               :AppStyles.animatedInputLabelFocusedTextStyle),
        readOnly: inputState == InputState.disabled ? true:false,
        decoration: inputDecoration ?? InputDecoration(
          labelText: strLabelTitle,
          labelStyle: labelTextStyle??AppStyles.animatedInputLabelStyle,
          errorText: (inputState == InputState.error) ? strErrorMessage : null,
          errorBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.INPUT_BOX_ERROR_BORDER,
            ),
          ),
          enabledBorder:UnderlineInputBorder(
            borderSide: BorderSide(
                color: (inputState == InputState.error)?AppColors.INPUT_BOX_ERROR_BORDER
                    : AppColors.INPUT_BOX_DISABLED_BORDER),
          ),
          focusedBorder:UnderlineInputBorder(
            borderSide: BorderSide(
                color: inputState == InputState.disabled
                    ?AppColors.INPUT_BOX_DISABLED_BORDER
                    :(inputState == InputState.error)?AppColors.INPUT_BOX_ERROR_BORDER:AppColors.INPUT_BOX_FOCUSED_BORDER),
          ),
          disabledBorder:const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.INPUT_BOX_DISABLED_BORDER),
          )


        ),
      ),
    );
  }
}
