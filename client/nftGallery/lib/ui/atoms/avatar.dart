
import 'package:final_template/app_imports.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';

import '../../core/constants/app_values.dart';
import '../../core/helpers/helper_ui.dart';
import '../automation_constants.dart';

class Avatar extends StatelessWidget {

  final AvatarSize avatarSize ;
  final AvatarType avatarType ;
  final AvatarShape avatarShape;
  final AvatarBadge avatarBadge ;
  final String? strAvatarText ;
  final String strImageSrc;
  final String? strBadgeNumeric ;
  final double? dHeight;
  final double? dWidth;
  final double? dBorderRadius;
  final Color bgColor ;
  final TextStyle? avatarTextStyle ;
  final TextStyle? badgeTextStyle;
  final Color badgeColor ;
  final double dBadgeDotHeight;
  final double dBadgeDotWidth;
  final Widget? icon;
  final VoidCallback? clickAction;

  const Avatar({
    Key? key,
    this.avatarShape = AvatarShape.circle,
    this.avatarBadge = AvatarBadge.none,
    this.avatarType = AvatarType.text,
    this.avatarSize = AvatarSize.medium,
    this.strAvatarText ,
    required this.strImageSrc,
    this.strBadgeNumeric,
    this.dWidth,
    this.dHeight,
    this.bgColor = AppColors.AVATAR_TEXT_BG,
    this.avatarTextStyle,
    this.badgeColor = AppColors.AVATAR_BADGE_COLOR,
    this.dBadgeDotHeight = AppValues.AVATAR_BADGE_DOT_HEIGHT,
    this.dBadgeDotWidth = AppValues.AVATAR_BADGE_DOT_WIDTH,
    this.dBorderRadius,
    this.icon,
    this.clickAction,
    this.badgeTextStyle,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      value: AutomationConstants.AVATAR,
      child: GestureDetector(
        onTap: (){
          if(clickAction!=null){
            clickAction!();
          }
        },
        child: Container(
          height: dHeight ?? avatarHeight(avatarSize)+(avatarBadge == AvatarBadge.numeric?10:0),
          width: dWidth ?? avatarWidth(avatarSize)+(avatarBadge == AvatarBadge.numeric?10:0),
          child: Stack(
            children: [
              if(avatarBadge == AvatarBadge.numeric)
              Container(
                height: 10,
              ),
              if(avatarType == AvatarType.image)
              Positioned(
                top: avatarBadge == AvatarBadge.numeric?8.0:0,
                  child: _imageWidget()),
              if(avatarType == AvatarType.icon)
                Positioned(
                    top: avatarBadge == AvatarBadge.numeric?8.0:0,
                    child: _iconWidget()),
              if(avatarType == AvatarType.text)
                Positioned(
                    top: avatarBadge == AvatarBadge.numeric?8.0:0,
                    child: _textWidget()),
              if(avatarBadge== AvatarBadge.dot)
              Positioned(
                top: avatarShape == AvatarShape.circle?(10*(dHeight ?? avatarHeight(avatarSize)/100)):0.0,
                right: avatarShape == AvatarShape.circle?(5*(dHeight ?? avatarHeight(avatarSize)/100)):0.0,
                child: Container(
                  height: avatarBadge == AvatarBadge.numeric?null:6,
                  width: avatarBadge == AvatarBadge.numeric?null:6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                      color: badgeColor,
                  ),
                ),
              ),
              if(avatarBadge == AvatarBadge.numeric)
                Positioned(
                  top: 0.0,
                  right: 0.0,
                  child: Container(
                    height: avatarBadgeHeight(avatarSize),
                    padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: badgeColor,
                    ),
                    child: Center(
                      child: Text(
                        strBadgeNumeric??"",
                        style: badgeTextStyle,

                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),

    );
  }

  Widget _iconWidget(){
    return avatarShape == AvatarShape.square
        ? Container(
      color: bgColor,
      height: dHeight ?? avatarHeight(avatarSize),
      width: dWidth ?? avatarWidth(avatarSize),
          child: ClipRRect(
      child: icon,
    ),
        )
        :Padding(
      padding: const EdgeInsets.all(1.0),
      child: CircleAvatar(
        backgroundColor: bgColor,
        radius: avatarHeight(avatarSize)/2,
        child: icon,
      ),
    );
  }

  Widget _imageWidget(){
    return SizedBox(
      height: dHeight ?? avatarHeight(avatarSize),
      width: dWidth ?? avatarWidth(avatarSize),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(dBorderRadius??
            (avatarShape == AvatarShape.circle?100:2)),
        child: _mapImageSrc()
      ),
    );
  }


  Widget _textWidget(){
    return avatarShape == AvatarShape.square
        ? Container(
        color: bgColor,
        height: dHeight ?? avatarHeight(avatarSize),
        width: dWidth ?? avatarWidth(avatarSize),
        child:Center(
          child: ClipRRect(
            child: Text(
      strAvatarText!=null && strAvatarText!.isNotEmpty?strAvatarText![0]:"",
      style: avatarTextStyle??AppStyles.avatarTextStyle(avatarSize),
    ),
          ),
        ))
        :CircleAvatar(
          backgroundColor: bgColor,
          radius: avatarHeight(avatarSize)/2,
          child: Text(
          strAvatarText!=null && strAvatarText!.isNotEmpty?strAvatarText![0]:"",
          style: avatarTextStyle??AppStyles.avatarTextStyle(avatarSize),
      ),
    );

  }


  Widget _mapImageSrc(){
    if (strImageSrc.startsWith('assets/')) {
      return avatarSourceAsset();
    }else if(strImageSrc.startsWith('http') || strImageSrc.startsWith('https')){
      return avatarSourceNetwork();
    }else if(strImageSrc.startsWith('file://')){
      return avatarSourceFile();
    }else{
      return avatarImageSrcEmpty();
    }
  }


  Widget avatarSourceAsset(){
      return Image.asset(
        strImageSrc!,
        fit: BoxFit.cover,
      );
  }

  Widget avatarSourceNetwork(){
    return CachedNetworkImage(
      imageUrl: strImageSrc!,
      fit: BoxFit.cover,
      placeholder: (context, url) =>
          Container(child: HelperUI.getProgressIndicator()),
    );
  }

  Widget avatarSourceFile(){
    return Image.file(
      File(strImageSrc!),
      fit: BoxFit.cover,
    );
  }

  Widget avatarImageSrcEmpty(){
    return const CircleAvatar(
      backgroundColor: Colors.transparent,
    );
  }


  

}
