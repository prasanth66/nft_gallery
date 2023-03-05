import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_template/app_imports.dart';
import 'package:final_template/ui/automation_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart';

class ImageView extends StatelessWidget {
  final ImageShapes shape;
  final String strIconData;
  final double dBorderRadius;
  final VoidCallback clickAction;
  final Color borderColor;
  final double? height;
  final double? width;
  // final bool? assetImage;

  const ImageView({
    Key? key,
    this.shape = ImageShapes.Standard, // Default
    required this.strIconData,
    this.dBorderRadius = AppValues.AVATAR_ICON_CORNER_RADIUS,
    this.clickAction = _defaultFunction,
    this.borderColor = Colors.white,
    this.height,
    this.width,
    // this.assetImage
  }) : super(key: key);

  static _defaultFunction() {
    // Does nothing
  }

  factory ImageView.square(
      {required String strIconData,
      VoidCallback clickAction = _defaultFunction}) {
    return ImageView(
        strIconData: strIconData,
        shape: ImageShapes.Square,
        dBorderRadius: 0,
        clickAction: clickAction);
  }

  factory ImageView.file(
      {required String strIconData,
      VoidCallback clickAction = _defaultFunction}) {
    return ImageView(
        strIconData: strIconData,
        shape: ImageShapes.File,
        dBorderRadius: 0,
        clickAction: clickAction);
  }

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.IMAGE_VIEW,
      child: extension(strIconData).contains("svg")
          ? SvgPicture.asset(
              strIconData,
              height: height,
              width: width,
            )
          : child(strIconData),
    );
  }

  Widget getImageShape() {
    if (shape == ImageShapes.Circle) {
      return circleImage(child(strIconData));
    } else if (shape == ImageShapes.Square) {
      return squareImage(child(strIconData));
    } else if (shape == ImageShapes.File) {
      return fileImage(child(strIconData));
    } else {
      return standardImage(child(strIconData));
    }
  }

  Widget child(String imagePath) {
    return shape == ImageShapes.File
        ? Image.asset(strIconData)
        : ClipRRect(
            borderRadius: BorderRadius.circular(dBorderRadius),
            child: CachedNetworkImage(
              imageUrl: strIconData,
              fit: BoxFit.cover,
              placeholder: (context, url) =>
                  Container(child: HelperUI.getProgressIndicator()),
            ),
          );
  }

  Widget circleImage(Widget child) {
    return Center(
      child: SizedBox(
        width: 350,
        height: 350,
        child: ClipOval(
          child: SizedBox.fromSize(
            size: const Size.fromRadius(48), // Image radius
            child: child,
          ),
        ),
      ),
    );
  }

  Widget squareImage(Widget child) {
    return Center(
      child: SizedBox(
        width: 350,
        height: 350,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(2),
            child: child,
          ),
        ),
      ),
    );
  }

  Widget standardImage(Widget child) {
    return Center(
      child: SizedBox(
        width: 350,
        height: 350,
        child: Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(dBorderRadius),
            child: child,
          ),
        ),
      ),
    );
  }

  Widget fileImage(Widget child) {
    return Center(
      child: SizedBox(
        width: 350,
        height: 350,
        child: Center(child: child),
      ),
    );
  }
}
