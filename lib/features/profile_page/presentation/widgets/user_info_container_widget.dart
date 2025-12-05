import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/resource/common_entity/addresses_entity.dart';
import '../../../../core/resource/image_widget.dart';
import '../../domain/entities/profile_entity.dart';

class UserInfoContainerWidget extends StatelessWidget {
  final ProfileEntity? profileEntity;
  final AddressesEntity? addressesEntity;
  const UserInfoContainerWidget({
    super.key,
    this.profileEntity,
    this.addressesEntity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 70.w,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: ImageWidget(
              errorWidget: Icon(Icons.account_circle),
              imageUrl:
                  profileEntity?.avatar ??
                  "https://www.pngall.com/wp-content/uploads/5/Profile-PNG-High-Quality-Image.png",
              boxFit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 220.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    profileEntity?.name ?? "",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),

                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      profileEntity?.email ?? "",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontFamily: FontConstants.fontFamily(context.locale),
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    profileEntity?.phone ?? "",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    addressesEntity?.city?["name"] ?? "",
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                      fontFamily: FontConstants.fontFamily(context.locale),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ).asGlass(
      frosted: true,
      blurX: 58,
      blurY: 58,
      tintColor: Theme.of(context).colorScheme.primary.withValues(alpha: 1.0),
      clipBorderRadius: BorderRadius.circular(12.r),
      border: Theme.of(context).defaultBorderSide,
    );
  }
}
