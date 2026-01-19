import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glass/glass.dart';

class ImageWidget extends StatelessWidget {
  final String imageUrl;
  final BoxFit? boxFit;
  final double? width;
  final double? height;
  final double? errorIconSize;
  final Widget? errorWidget;
  const ImageWidget({
    super.key,
    required this.imageUrl,
    this.boxFit,
    this.width,
    this.height,
    this.errorIconSize,
    this.errorWidget,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.toLowerCase().endsWith('.svg')) {
      return SizedBox(
        width: width,
        height: height,
        child: GestureDetector(
          onTap: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  width: 1.sw,
                  height: 1.sh,
                  child: Column(
                    children: [
                      IconButton(
                        onPressed: () => Navigator.of(context).pop(),
                        icon: Icon(
                          Icons.close,
                          color: Theme.of(context).textTheme.labelLarge?.color,
                          size: 32.sp,
                          shadows: [
                            Shadow(
                              color: Theme.of(context).shadowColor,
                              blurRadius: 4.r,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.w),
                          child: Align(
                            alignment: Alignment.center,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: SvgPicture.network(
                                imageUrl,

                                fit: boxFit ?? BoxFit.contain,
                                errorBuilder: (context, error, stackTrace) =>
                                    FittedBox(
                                      fit: boxFit ?? BoxFit.contain,
                                      child:
                                          errorWidget ??
                                          Icon(
                                            Icons.broken_image,

                                            color: Theme.of(
                                              context,
                                            ).colorScheme.error,
                                            size: errorIconSize,
                                          ),
                                    ),
                                placeholderBuilder: (context) => SizedBox(
                                  width: width,
                                  height: height,
                                  child: SizedBox(
                                    width: 50.w,
                                    height: 50.h,
                                    child: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ).asGlass(
                  tintColor: Theme.of(context).scaffoldBackgroundColor,
                  frosted: true,
                  blurX: 10,
                  blurY: 10,
                );
              },
            );
          },
          child: SvgPicture.network(
            imageUrl,
            width: width,
            height: height,
            fit: boxFit ?? BoxFit.contain,
            errorBuilder: (context, error, stackTrace) => FittedBox(
              fit: boxFit ?? BoxFit.contain,
              child:
                  errorWidget ??
                  Icon(
                    Icons.broken_image,

                    color: Theme.of(context).colorScheme.error,
                    size: errorIconSize,
                  ),
            ),
            placeholderBuilder: (context) => SizedBox(
              width: width,
              height: height,
              child: SizedBox(
                width: 50.w,
                height: 50.h,
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        width: width,
        height: height,
        child: GestureDetector(
          onTap: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  width: 1.sw,
                  height: 1.sh,
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(
                            Icons.close,
                            color: Theme.of(
                              context,
                            ).textTheme.labelLarge?.color,
                            size: 32.sp,
                            shadows: [
                              Shadow(
                                color: Theme.of(context).shadowColor,
                                blurRadius: 4.r,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.w),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: CachedNetworkImage(
                                fit: boxFit ?? BoxFit.contain,
                                imageUrl: imageUrl,
                                progressIndicatorBuilder:
                                    (context, url, progress) => Center(
                                      child: CircularProgressIndicator(
                                        value: progress.progress,
                                      ),
                                    ),
                                errorWidget: (_, __, ___) =>
                                    errorWidget ??
                                    Icon(
                                      Icons.error,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.error,
                                      size: errorIconSize,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ).asGlass(
                  tintColor: Theme.of(context).scaffoldBackgroundColor,
                  frosted: true,
                  blurX: 10,
                  blurY: 10,
                );
              },
            );
          },
          child: CachedNetworkImage(
            fit: boxFit ?? BoxFit.contain,
            width: width,
            height: height,
            imageUrl: imageUrl,

            progressIndicatorBuilder: (context, url, progress) => Center(
              child: CircularProgressIndicator(value: progress.progress),
            ),
            errorWidget: (_, __, ___) =>
                errorWidget ??
                Icon(
                  Icons.error,
                  color: Theme.of(context).colorScheme.error,
                  size: errorIconSize,
                ),
          ),
        ),
      );
    }
  }
}
