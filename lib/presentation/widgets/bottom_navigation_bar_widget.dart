import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/util_image_caching.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.backgroundPrimaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.iconColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon:
          CachedSvg.get(
            AppAssets.card,
            height: 48,
            width: 48,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon:
          CachedSvg.get(
            AppAssets.bonfire,
            height: 48,
            width: 48,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon:
          CachedSvg.get(
            AppAssets.chat,
            height: 48,
            width: 48,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.user,
            height: 48,
            width: 48,
          ),
          label: '',
        ),
      ],
    );
  }
}
