import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageCacheCustom extends StatelessWidget {
  const ImageCacheCustom({
    super.key,
    this.url,
    this.width,
    this.height,
    this.fit,
    this.errorBuilder,
  });

  final String? url;
  final double? width;
  final double? height;
  final BoxFit? fit;
  final Widget Function(
    BuildContext context,
    String url,
    Object error,
  )? errorBuilder;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: url ?? '',
      height: height,
      width: width,
      fit: fit ?? BoxFit.cover,
      placeholder: (context, url) => Image.asset(
        'assets/images/logo.png',
        height: 100,
        width: 100,
      ),
      errorWidget: errorBuilder,
    );
  }
}
