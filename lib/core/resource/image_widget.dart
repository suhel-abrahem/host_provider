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
  const ImageWidget({
    super.key,
    required this.imageUrl,
    this.boxFit,
    this.width,
    this.height,
    this.errorIconSize,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.toLowerCase().endsWith('.svg')) {
      return SvgPicture.network(
        imageUrl,
        width: width,
        height: height,
        fit: boxFit ?? BoxFit.contain,
        errorBuilder: (context, error, stackTrace) => Icon(
          Icons.error,
          color: Theme.of(context).colorScheme.error,
          size: errorIconSize,
        ),
        placeholderBuilder: (context) => SizedBox(
          width: width,
          height: height,
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return CachedNetworkImage(
        fit: boxFit ?? BoxFit.contain,
        width: width,
        height: height,
        imageUrl: imageUrl,

        progressIndicatorBuilder: (context, url, progress) =>
            CircularProgressIndicator(value: progress.progress),
        errorWidget: (_, __, ___) => Icon(
          Icons.error,
          color: Theme.of(context).colorScheme.error,
          size: errorIconSize,
        ),
      );
    }
  }
}
