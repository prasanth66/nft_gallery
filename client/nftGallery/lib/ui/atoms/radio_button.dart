import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/automation_constants.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {

  final String strValue;
  final String strGroupValue;
  final void Function(String) clickAction;
  final bool? bIsSelected ;
  final bool bIsDisabled ;
  final bool bIsError ;
  final String strErrorText ;
  final TextStyle? errorTextStyle;
  final Color activeColor;
  final Color disabledColor ;
  final Color errorColor ;
  final String strLabelText ;
  final TextStyle? labelActiveTextStyle ;
  final TextStyle? labelUnActiveTextStyle ;
  final Widget? icon ;
  final bool bShowIcon ;
  final bool bLabelPositionLeft ;
  final Color defaultColor;


  const RadioButton({
    Key? key,
    required this.strValue,
    required this.strGroupValue,
    required this.clickAction,
    this.bIsSelected ,
    this.bIsDisabled = false,
    this.bIsError = false,
    this.strErrorText = "",
    this.errorTextStyle,
    this.activeColor = AppColors.RADIO_BUTTON_SELECTED_COLOUR ,
    this.disabledColor = AppColors.RADIO_BUTTON_DISABLED_COLOUR,
    this.errorColor = AppColors.RADIO_BUTTON_ERROR_COLOUR ,
    required this.strLabelText,
    this.labelActiveTextStyle,
    this.labelUnActiveTextStyle,
    this.icon,
    this.bShowIcon = false ,
    this.bLabelPositionLeft = false,
    this.defaultColor = AppColors.RADIO_BUTTON_DEFAULT_COLOR ,

  }) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();

}

class _RadioButtonState extends State<RadioButton> {

  late String selectedGroupValue ;

  @override
  void initState() {
    super.initState();
    selectedGroupValue = widget.strGroupValue ;
    if(widget.bIsSelected!=null && widget.bIsSelected==true){
      selectedGroupValue = widget.strValue ;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.RADIO_BUTTON,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:(!widget.bIsDisabled && widget.bShowIcon && (widget.bIsError || ( selectedGroupValue == widget.strValue)))?const EdgeInsets.all(16.0):null,
            decoration:(!widget.bIsDisabled &&  widget.bShowIcon && (widget.bIsError || ( selectedGroupValue == widget.strValue)))?BoxDecoration(
              border: Border.all(color: widget.bIsError?widget.errorColor:widget.activeColor),
              borderRadius: BorderRadius.circular(8),
            ):null,
            child: Row(
              children: [
                if(widget.bShowIcon && widget.icon!=null)
                  widget.icon!,
                if(widget.bLabelPositionLeft == true)
                  _labelText(),
                _radioButton(),
                if(widget.bLabelPositionLeft == false)
                  _labelText(),

              ],
            ),
          ),
          if(widget.bIsError)
          Padding(
            padding: const EdgeInsets.only(left: 6.0),
            child: Text(
              widget.strErrorText,
              style: widget.errorTextStyle ?? AppStyles.radioButtonErrorTextStyle,

            ),
          )
        ],
      )
    );
  }

  Widget _radioButton(){
    return Radio(
      value: widget.strValue,
      groupValue: selectedGroupValue,
      activeColor: widget.bIsDisabled?widget.disabledColor
          :widget.bIsError?widget.errorColor:widget.activeColor,
      fillColor: MaterialStateColor.resolveWith((states) {
        print("current state is ${states}" );
        if(widget.bIsError) {
          return widget.errorColor;
        } else if(widget.bIsDisabled){
          return widget.disabledColor;
        }else if(widget.strValue == selectedGroupValue){
          return widget.activeColor;
        }
        return widget.defaultColor;

      }),

      onChanged: ( value) {
        if(widget.bIsDisabled==false){
          setState(() {
            selectedGroupValue = widget.strValue;
          });
          widget.clickAction(value.toString());
        }
      },
    );
  }

  Widget _labelText(){
    return Flexible(
      child: Text(
        widget.strLabelText,
        style:  (selectedGroupValue == widget.strValue
            ?(widget.labelActiveTextStyle ?? AppStyles.radioButtonActiveTextStyle)
            :(widget.labelUnActiveTextStyle ?? AppStyles.radioButtonUnActiveTextStyle)
        ) ,
      ),
    );
  }


}
