import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/automation_constants.dart';
import 'package:final_template/ui/custom_spacers.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final bool bError;
  final bool bDisable;
  bool bLeft;
  bool bSelected;
  final String strCheckboxText;
  final Function(bool) selectedValue;
  final Color cTextColor;
  final double dRadius;
  final Widget? checkboxIcon;
  final bool bShowIcon;
  final double? height;

  CustomCheckbox(
      {Key? key,
      this.height = 100,
      required this.strCheckboxText,
      this.bDisable = false,
      this.bLeft = true,
      this.bError = false,
      required this.bSelected,
      required this.selectedValue,
      this.dRadius = AppValues.CHECKBOX_CORNER_RADIUS,
      this.bShowIcon = false,
      this.checkboxIcon,
      this.cTextColor = AppColors.BASICBLACK})
      : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCustomCheckboxtate();
}

class _CustomCustomCheckboxtate extends State<CustomCheckbox> {
  bool? bSelected;

  @override
  void initState() {
    super.initState();
    bSelected = false;
    if (widget.bShowIcon == true) {
      setState(() {
        widget.bLeft = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.CHECKBOX,
      child: SizedBox(
        height: widget.height,
        child: Stack(
          fit: StackFit.loose,
          children: [
            Container(
              height: 60,
              padding: const EdgeInsets.all(AppValues.CHECKBOX_MARGIN),
              decoration: widget.bShowIcon == true &&
                      widget.bSelected &&
                      widget.bDisable == false &&
                      widget.bError == false
                  ? BoxDecoration(
                      border: Border.all(
                          width: 1, color: AppColors.CHECKBOX_SELECTED_COLOR),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(AppValues.CHECKBOX_RADIUS)),
                    )
                  : widget.bShowIcon == true && widget.bError == true
                      ? BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.CHECKBOX_ERROR_BASE),
                          borderRadius: const BorderRadius.all(
                              Radius.circular(AppValues.CHECKBOX_RADIUS)),
                        )
                      : const BoxDecoration(),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  widget.bLeft ? CustomSpacers.height12 : Container(),
                  if (widget.bShowIcon == true)
                    Container(
                        margin: const EdgeInsets.only(
                            right: AppValues.CHECKBOX_MARGIN),
                        child: widget.checkboxIcon!),
                  widget.bLeft == true && widget.bShowIcon == false
                      ? checkboxWidget()
                      : Container(),
                  CustomSpacers.height12, //SizedBox
                  Flexible(
                    child: Text(
                      widget.strCheckboxText,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: AppStyles.checkboxTextStyle,
                    ),
                  ), //Text
                  CustomSpacers.height12, //SizedBox
                  widget.bLeft == false || widget.bShowIcon == true
                      ? checkboxWidget()
                      : Container(),
                ], //<Widget>[]
              ),
            ),
            widget.bError && widget.bShowIcon
                ? Positioned(
                    top: 80,
                    left: 0,
                    height: 40,
                    width: 100,
                    child: Text(
                      "Error Message",
                      style: AppStyles.checkboxError,
                    ),
                  )
                : widget.bError &&
                        widget.bLeft == true &&
                        widget.bShowIcon == false
                    ? Positioned(
                        top: 65,
                        left: 16,
                        height: 40,
                        width: 100,
                        child: Text(
                          "Error Message",
                          style: AppStyles.checkboxError,
                        ),
                      )
                    : widget.bError &&
                            widget.bLeft == false &&
                            widget.bShowIcon == false
                        ? Positioned(
                            top: 65,
                            right: 8,
                            height: 40,
                            width: 100,
                            child: Text(
                              "Error Message",
                              style: AppStyles.checkboxError,
                            ),
                          )
                        : Container()
          ],
        ),
      ),
    );
  }

  Widget checkboxWidget() {
    if (widget.bDisable && widget.bError == false) {
      return Checkbox(
        value: widget.bSelected,
        side: const BorderSide(
            width: AppValues.CHECKBOX_WIDTH,
            color: AppColors.CHECKBOX_DISABLE_COLOR),
        fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (widget.bDisable && widget.bError == false) {
            return AppColors.CHECKBOX_DISABLE_COLOR;
          }
          if (widget.bError == true) {
            return AppColors.CHECKBOX_ERROR_BASE;
          }
          return AppColors.CHECKBOX_SELECTED_COLOR;
        }),
        onChanged: (value) {
          setState(() {
            if (widget.bDisable == false && widget.bError == false) {
              widget.bSelected = value!;
              widget.selectedValue(value);
            }
          });
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.dRadius)),
      );
    }
    if (widget.bDisable == false && widget.bError == false) {
      return Checkbox(
        value: widget.bSelected,
        activeColor: AppColors.CHECKBOX_SELECTED_COLOR,
        fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (widget.bDisable && widget.bError == false) {
            return AppColors.CHECKBOX_DISABLE_COLOR;
          }
          if (widget.bError == true) {
            return AppColors.CHECKBOX_ERROR_BASE;
          }
          if (widget.bSelected == true) {
            return AppColors.CHECKBOX_SELECTED_COLOR;
          }
          return AppColors.CHECKBOX_DISABLE_COLOR;
        }),
        onChanged: (value) {
          setState(() {
            if (widget.bDisable == false && widget.bError == false) {
              widget.bSelected = value!;
              widget.selectedValue(value);
            }
          });
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.dRadius)),
      );
    }
    if (widget.bError == true) {
      return Checkbox(
        value: false,
        fillColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          return AppColors.CHECKBOX_ERROR_BASE;
        }),
        onChanged: null,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.dRadius)),
      );
    }
    return Container();
  }
}
