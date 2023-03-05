import 'package:final_template/app_imports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shimmer/shimmer.dart';

class HelperUI {
  static Widget emptyContainer() {
    // ignore: sized_box_for_whitespace
    return Container(
      width: 0,
      height: 0,
    );
  }

  static Widget getProgressIndicator() {
    return Material(
      color: Colors.white.withOpacity(0.6),
      child: const Center(
        child: SizedBox(
          width: 30,
          height: 30,
          child: CircularProgressIndicator(
            color: AppColors.APP_THEME,
          ),
        ),
      ),
    );
  }

  static Widget getAppLogo() {
    return SvgPicture.asset(AppImages.STRING_ICON_APP_ICON);
  }

  static Widget getProgressGhost({height = 0.0, width = 0.0}) {
    return Center(
        child: Shimmer.fromColors(
            baseColor: AppColors.APP_THEME,
            highlightColor: AppColors.APP_THEME,
            period: const Duration(seconds: 2),
            child: Container(
              height: height,
              width: width,
              decoration: const BoxDecoration(
                color: AppColors.APP_THEME,
              ),
            )));
  }
}
