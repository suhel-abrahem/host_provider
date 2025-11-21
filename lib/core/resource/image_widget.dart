import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        child: SvgPicture.network(
          imageUrl,
          width: width,
          height: height,
          fit: boxFit ?? BoxFit.contain,
          errorBuilder: (context, error, stackTrace) =>
              errorWidget ??
              Icon(
                Icons.error,
                color: Theme.of(context).colorScheme.error,
                size: errorIconSize,
              ),
          placeholderBuilder: (context) => SizedBox(
            width: width,
            height: height,
            child: SizedBox(
              width: 50.w,
              height: 50.h,
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      );
    } else {
      return SizedBox(
        width: width,
        height: height,
        child: CachedNetworkImage(
          fit: boxFit ?? BoxFit.contain,
          width: width,
          height: height,
          imageUrl: imageUrl,

          progressIndicatorBuilder: (context, url, progress) =>
              CircularProgressIndicator(value: progress.progress),
          errorWidget: (_, __, ___) =>
              errorWidget ??
              Icon(
                Icons.error,
                color: Theme.of(context).colorScheme.error,
                size: errorIconSize,
              ),
        ),
      );
    }
  }
}
