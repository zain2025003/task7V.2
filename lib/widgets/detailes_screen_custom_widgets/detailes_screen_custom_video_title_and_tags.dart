import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/app_text_styles.dart';
import 'package:task7_v2/widgets/public_custom_widgets/custom_text.dart';

class DetailesScreenCustomVideoTitleAndTages extends StatelessWidget {
  const DetailesScreenCustomVideoTitleAndTages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            topPadding: AppSizes.detailesScreenVideoTitleTopPadding,
            leftPadding: AppSizes.detailesScreenVideoTitleLeftPaddong,
            fontWeight: AppTextStyles.fontWeight_w600,
            text: 'Step design sprint for',
            fontSize: AppSizes.detailesScreenVideoTitleFontSize,
            textColor: AppColors.detailesVedioTitleColor),
        CustomText(
            leftPadding: AppSizes.detailesScreenVideoTitleLeftPaddong,
            fontWeight: AppTextStyles.fontWeight_w600,
            text: 'beginner',
            fontSize: AppSizes.detailesScreenVideoTitleFontSize,
            textColor: AppColors.detailesVedioTitleColor),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(
                  top: AppSizes.detailesScreenFirstTageMarginTop,
                  left: AppSizes.detailsScreenFirstTageMarginLeft),
              padding: EdgeInsets.only(
                  bottom: AppSizes.detailesScreenTageBottomPadding,
                  right: AppSizes.detailesScreenTageRightPadding,
                  top: AppSizes.detailesScreenTageTopPadding,
                  left: AppSizes.detailesScreenTageLeftPadding),
              decoration: BoxDecoration(
                color: AppColors.detailesTagOneColor,
                borderRadius:
                    BorderRadius.circular(AppSizes.detailesScreenTagwRadius),
              ),
              child: Text(
                '6 lessons',
                style: TextStyle(
                    fontSize: AppSizes.detailesScreenTagesTextFontSize,
                    color: AppColors.detailesTagsDescriptionColor),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: AppSizes.detailesScreenTageTwoTopMargin,
                  left: AppSizes.detailesScreenTageTwoLeftMargin),
              padding: EdgeInsets.only(
                  bottom: AppSizes.detailesScreenTageBottomPadding,
                  right: AppSizes.detailesScreenTageRightPadding,
                  top: AppSizes.detailesScreenTageTopPadding,
                  left: AppSizes.detailesScreenTageLeftPadding),
              decoration: BoxDecoration(
                color: AppColors.detailesTagTwoColor,
                borderRadius:
                    BorderRadius.circular(AppSizes.detailesScreenTagwRadius),
              ),
              child: Text(
                'Design',
                style: TextStyle(
                    fontSize: AppSizes.detailesScreenTagesTextFontSize,
                    color: AppColors.detailesTagsDescriptionColor),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: AppSizes.detailesScreenTageThreeLeftMargin,
                  top: AppSizes.detailesScreenTageThreeTopMargin),
              padding: EdgeInsets.only(
                  bottom: AppSizes.detailesScreenTageBottomPadding,
                  right: AppSizes.detailesScreenTageRightPadding,
                  top: AppSizes.detailesScreenTageTopPadding,
                  left: AppSizes.detailesScreenTageLeftPadding),
              decoration: BoxDecoration(
                color: AppColors.detailesTagThreeColor,
                borderRadius:
                    BorderRadius.circular(AppSizes.detailesScreenTagwRadius),
              ),
              child: Text(
                'Free',
                style: TextStyle(
                    color: AppColors.detailesTagsDescriptionColor,
                    fontSize: AppSizes.detailesScreenTagesTextFontSize),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
