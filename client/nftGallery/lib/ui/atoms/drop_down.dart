import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/atoms/custom_checkbox.dart';
import 'package:final_template/ui/automation_constants.dart';
import 'package:flutter/material.dart';

class DropDown<T> extends StatefulWidget {
  final List<MyModel<T>> modelList;
  final MyModel<T> model;
  final bool bIsSearch;
  final bool bIsMultiSelect;
  final String label;
  final ValueChanged<MyModel<T>?> callback;
  final TextStyle? labelTextStyle;
  final TextStyle? searchTextStyle;
  final TextStyle? itemTextStyle;
  final TextStyle? placeHolderTextStyle;
  final bool? bIsDisabled;
  final bool? bIsError;
  final String? errorMessage;
  final TextStyle? errorTextStyle;

  const DropDown(
      {Key? key,
      required this.modelList,
      required this.model,
      required this.callback,
      this.bIsSearch = true,
      this.bIsMultiSelect = false,
      this.label = '',
      this.itemTextStyle,
      this.labelTextStyle,
      this.searchTextStyle,
      this.placeHolderTextStyle,
      this.bIsDisabled = false,
      this.bIsError = false,
      this.errorMessage,
      this.errorTextStyle})
      : super(key: key);

  @override
  State<DropDown<T>> createState() => _DropDownState<T>();
}

class MyModel<T> {
  String? userName;
  bool? bIsSelected = false;
  final T? data;
  MyModel({this.userName, this.bIsSelected, this.data});
}

class _DropDownState<T> extends State<DropDown<T>> {
  MyModel<T>? labour;
  List<MyModel<T>?>? searchModelList;
  bool _isVisible = false;
  String selecteValue = "Select ";
  List<String> selectedItems = [];
  final LayerLink _layerLink = LayerLink();
  OverlayState? overlayState;
  OverlayEntry? overlay1;
  TextEditingController searchTextController = TextEditingController();

  @override
  void initState() {
    labour = widget.model;
    searchModelList = widget.modelList;
  }

  @override
  Widget build(BuildContext context) {
    overlayState = Overlay.of(context);
    return Semantics(
      value: AutomationConstants.DROPDOWN,
      child: Material(
        color: Colors.transparent,
        child: CompositedTransformTarget(
          link: _layerLink,
          child: Stack(
            children: [
              labelWidgte(),
              dropDownItems(),
              widget.bIsError!
                  ? Container(
                      margin: EdgeInsets.only(
                          top: widget.label.isNotEmpty
                              ? AppValues.DROP_DOWN_ITEMS_TOP_MARGIN_SEARCH
                              : AppValues.DROP_DOWN_ITEMS_TOP_MARGIN,
                          left: AppValues.HORIZONTAL_PADDING,
                          right: AppValues.HORIZONTAL_PADDING),
                      child: Text(
                        widget.errorMessage!,
                        style: widget.errorTextStyle ?? AppStyles.dropDownErrorTextStyle,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Widget labelWidgte() {
    return widget.label.isNotEmpty
        ? Container(
            margin: const EdgeInsets.only(left: AppValues.HORIZONTAL_PADDING, right: AppValues.HORIZONTAL_PADDING),
            child: Text(
              widget.label,
              style: widget.labelTextStyle ?? AppStyles.labelTextStyle,
            ),
          )
        : Container();
  }

  Widget dropDownItems() {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(
            top: widget.label.isNotEmpty ? 30 : 0,
            left: AppValues.HORIZONTAL_PADDING,
            right: AppValues.HORIZONTAL_PADDING),
        height: 50,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: AppValues.HORIZONTAL_PADDING),
        decoration: BoxDecoration(
            border:
                Border.all(color: widget.bIsError! ? AppColors.DROP_DOWN_ERROR_BORADER : AppColors.DROP_DOWN_BORADER),
            borderRadius: BorderRadius.circular(5),
            color: widget.bIsDisabled! ? AppColors.DROP_DOWN_DISABLED_COLOR : AppColors.WHITE),
        child: Row(
          children: [
            Expanded(
              child: Text(selectedItems.isNotEmpty ? selectedItemsValues() : selecteValue),
            ),
            _isVisible
                ? SizedBox(
                    height: AppValues.DROP_DOWN_DOWN_ARROW_HEIGHT,
                    width: AppValues.DROP_DOWN_DOWN_ARROW_WIDTH,
                    child: Image.asset(AppImages.DROP_DOWN_DOWN_ARROW))
                : SizedBox(
                    height: AppValues.DROP_DOWN_UP_ARROW_HEIGHT,
                    width: AppValues.DROP_DOWN_UP_ARROW_WIDTH,
                    child: Image.asset(AppImages.DROP_DOWN_UP_ARROW))
          ],
        ),
      ),
      onTap: widget.bIsDisabled! || widget.bIsError!
          ? null
          : () {
              setState(() {
                _isVisible = !_isVisible;
                if (searchTextController.text.isNotEmpty) {
                  searchTextController.clear();
                  onSearchTextChanged('');
                }
                _showOverlay(context);
              });
            },
    );
  }

  String selectedItemsValues() {
    String localSelectValues = '';
    if (selectedItems.isNotEmpty && selectedItems.length <= 2) {
      localSelectValues = selectedItems.join(' , ');
    }
    if (selectedItems.isNotEmpty && selectedItems.length > 2) {
      num remainingCount = (selectedItems.length - 2) > 4 ? 5 : (selectedItems.length - 2);
      localSelectValues = selectedItems[0] + ' , ' + selectedItems[1] + '   ...+' + remainingCount.toString() + "more";
    }
    return localSelectValues;
  }

  void _showOverlay(BuildContext context) async {
    if (!_isVisible && overlay1 != null) {
      overlay1!.remove();
    } else {
      overlay1 = OverlayEntry(builder: (context) {
        return _isVisible
            ? FittedBox(
                fit: BoxFit.cover,
                child: CompositedTransformFollower(
                  link: _layerLink,
                  child: FittedBox(
                    fit: BoxFit.none,
                    child: Container(
                      height: AppValues.DROP_DOWN_ITEMS_PARENT_HEIGHT,
                      width: MediaQuery.of(context).size.width * 0.915,
                      margin: EdgeInsets.only(
                          top: widget.label.isNotEmpty
                              ? AppValues.DROP_DOWN_ITEMS_TOP_MARGIN_SEARCH
                              : AppValues.DROP_DOWN_ITEMS_TOP_MARGIN,
                          left: AppValues.HORIZONTAL_PADDING,
                          right: AppValues.HORIZONTAL_PADDING),
                      padding: const EdgeInsets.symmetric(
                          horizontal: AppValues.HORIZONTAL_PADDING, vertical: AppValues.HORIZONTAL_PADDING),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.DROP_DOWN_BORADER),
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.WHITE),
                      child: Column(
                        children: [
                          widget.bIsSearch
                              ? Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: TextField(
                                    controller: searchTextController,
                                    style: widget.searchTextStyle ?? AppStyles.searchTextStyle,
                                    decoration: InputDecoration(
                                        hintText: 'Search',
                                        prefixIcon: IconButton(
                                          icon: Image.asset(
                                            AppImages.DROP_DOWN_SEARCH,
                                            width: AppValues.DROP_DOWN_SEARCH_WIDTH,
                                            height: AppValues.DROP_DOWN_SEARCH_HEIGHT,
                                          ),
                                          onPressed: null,
                                        ),
                                        focusedBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: AppColors.DROP_DOWN_SEARCH_BORADER_COLOR, width: 1.0),
                                        ),
                                        enabledBorder: const OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: AppColors.DROP_DOWN_SEARCH_BORADER_COLOR, width: 1.0),
                                        ),
                                        border: const OutlineInputBorder()),
                                    onChanged: (value) {
                                      onSearchTextChanged(value);
                                    },
                                  ),
                                )
                              : Container(),
                          SizedBox(
                            height: widget.bIsSearch
                                ? AppValues.DROP_DOWN_ITEMS_CHILD_WITH_SEARCH_HEIGHT
                                : AppValues.DROP_DOWN_ITEMS_CHILD_HEIGHT,
                            child: ListView.builder(
                              itemCount: searchModelList!.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                if (widget.bIsMultiSelect) {
                                  return Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 40,
                                      color: AppColors.WHITE,
                                      alignment: Alignment.centerLeft,
                                      child: CustomCheckbox(
                                        strCheckboxText: searchModelList![index]!.userName!,
                                        bSelected: searchModelList![index]!.bIsSelected!,
                                        selectedValue: (value) {
                                          widget.callback(searchModelList![index]);
                                          setState(() {
                                            if (value == true) {
                                              selectedItems.add(searchModelList![index]!.userName!);
                                              widget.callback(searchModelList![index]);
                                            }
                                            if (value == false) {
                                              selectedItems.remove(searchModelList![index]!.userName!);
                                            }
                                            searchModelList![index]!.bIsSelected = value;
                                          });
                                        },
                                      ),
                                    ),
                                  );
                                } else {
                                  return GestureDetector(
                                    onTap: () {
                                      widget.callback(searchModelList![index]);
                                      setState(() {
                                        labour = searchModelList![index];
                                        selecteValue = labour!.userName.toString();
                                        _isVisible = !_isVisible;
                                        _showOverlay(context);
                                      });
                                    },
                                    child: Container(
                                      height: 40,
                                      color: AppColors.WHITE,
                                      child: DefaultTextStyle(
                                        style: widget.itemTextStyle ?? AppStyles.dropDownItemTextStyle,
                                        child: Text(
                                          searchModelList![index]!.userName.toString(),
                                          style: widget.itemTextStyle ?? AppStyles.dropDownItemTextStyle,
                                          selectionColor: Colors.transparent,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Container();
      });
      overlayState!.insert(overlay1!);
    }
  }

  void onSearchTextChanged(String enteredKeyword) {
    List<MyModel<T>> results = [];
    if (searchTextController.text == '' || searchTextController.text.isEmpty) {
      results = widget.modelList;
    } else {
      results = widget.modelList
          .where((user) => user.userName.toString().toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      searchModelList = results;
    });
    _showOverlay(context);
  }
}
