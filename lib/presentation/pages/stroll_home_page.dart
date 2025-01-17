import 'package:flutter/material.dart';
import 'package:stroll_app/presentation/widgets/background_widget.dart';
import 'package:stroll_app/utils/app_assets.dart';

import '../../utils/app_colors.dart';
import '../../utils/util_image_caching.dart';
import '../widgets/bottom_navigation_bar_widget.dart';
import '../widgets/option_widget.dart';

class StrollHomePage extends StatelessWidget {
  const StrollHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
          child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Stroll Bonfire",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w800,
                      color: AppColors.appTitleColor,
                    ),
                  ),
              CachedSvg.get(
                AppAssets.arrowDropdown,
                color:  AppColors.appTitleColor,
                height: 40,
                width: 40,
              ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CachedSvg.get(
                  AppAssets.clock,
                  color:  AppColors.whiteColor,
                  height: 18,
                  width: 18,
                ),
                SizedBox(
                  width: 6,
                ),
                Text(
                  "22h 00m",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor),
                ),
                SizedBox(
                  width: 12.0,
                ),
                CachedSvg.get(
                  AppAssets.user,
                  color:  AppColors.whiteColor,
                  height: 26,
                  width: 26,
                ),
                Text(
                  "103",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.whiteColor),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(
                          AppAssets.userPhoto,),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Angelina, 28",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.textPrimaryColor),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "What is your favourite time of the day?",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.textPrimaryColor),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '"Mine is definitely the peace in the morning."',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic,
                        color: AppColors.appTitleSecondaryColor),
                  ),
                  SizedBox(height: 12),
                  OptionWidget(),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Pick your option.",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.whiteColor),
                          ),
                          Text(
                            "See who has a similar mind.",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: AppColors.whiteColor),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: AppColors.primaryColor, width: 2.5),
                        ),
                        child: Center(
                          child:
                          CachedSvg.get(
                            AppAssets.mic,
                            color:  AppColors.primaryColor,
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      CachedSvg.get(
                        AppAssets.arrowRight,
                        height: 48,
                        width: 48,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
