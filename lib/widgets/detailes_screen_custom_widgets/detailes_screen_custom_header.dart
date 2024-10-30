import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_icons.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/app_text_styles.dart';
import 'package:task7_v2/widgets/public_custom_widgets/custom_svg.dart';
import 'package:task7_v2/widgets/public_custom_widgets/custom_text.dart';

class DetailesScreenCustomHeader extends StatelessWidget {
  const DetailesScreenCustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: AppSizes.detailesNavigationButtonLeftPadding,
              top: AppSizes.detailesNavigationButtonTopPadding),
          width: AppSizes.detailesNavigationButtonWidth,
          height: AppSizes.detailesNavigationButtonWidth,
          decoration: BoxDecoration(
              color: AppColors.detailesNavigationButtonColor,
              borderRadius: BorderRadius.circular(
                  AppSizes.detailesNavigationButtonRedius)),
          child: Center(
            child: CustomSvg(
                pictureLink: AppIcons.detailesNavigationButtonIconLink,
                pictureWidth: AppSizes.detailesNavigationButtonIconWidth,
                pictureHeight: AppSizes.detailesNavigationButtonIconHeight),
          ),
        ),
        CustomText(
            topPadding: AppSizes.detailesPageTitleTopPadding,
            leftPadding: AppSizes.detailesPageTitleLeftPadding,
            fontWeight: AppTextStyles.fontWeight_w600,
            text: 'Detail course',
            fontSize: AppSizes.detailesPageTitleFontSize,
            textColor: AppColors.detailesPageTitleColor,
            fontFamily: AppTextStyles.primeryFontFamily),
        CustomSvg(
            topPadding: AppSizes.detailsPageNotifictionIconTopPadding,
            letfPadding: AppSizes.detailsPageNotifictionIconLeftPadding,
            pictureLink: AppIcons.notificationIcon,
            pictureWidth: AppSizes.detailesPageNotificationIconWidth,
            pictureHeight: AppSizes.detailesPageNotifictionIconHeight)
      ],
    );
  }
}
