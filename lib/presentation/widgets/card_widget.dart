import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CardWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  final String label;
  final VoidCallback onTap;

  const CardWidget({
    super.key,
    required this.text,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: AppColors.backgroundSecondaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(
            color: isSelected
                ? AppColors.primaryColor
                : AppColors.backgroundSecondaryColor,
            width: 2,
          ),
        ),
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: isSelected
                          ? AppColors.primaryColor
                          : AppColors.textSecondaryColor,
                      width: 1.5),
                  color: isSelected
                      ? AppColors.primaryColor
                      : AppColors.backgroundSecondaryColor,
                ),
                child: Center(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: isSelected
                          ? AppColors.whiteColor
                          : AppColors.textSecondaryColor,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  text,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textSecondaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
