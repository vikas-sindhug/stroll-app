import 'dart:ui';

import 'package:flutter_svg/svg.dart';

class CachedSvg {
  static final _cache = <String, SvgPicture>{};

  static SvgPicture get(String assetPath, {Color? color, double? width, double? height}) {
    return _cache.putIfAbsent(
      assetPath,
          () => SvgPicture.asset(
        assetPath,
        colorFilter: color != null
            ? ColorFilter.mode(color, BlendMode.srcIn)
            : null,
        width: width,
        height: height,
      ),
    );
  }
}