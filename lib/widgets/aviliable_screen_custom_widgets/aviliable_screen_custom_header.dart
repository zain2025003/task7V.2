import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/app_text_styles.dart';
import 'package:task7_v2/widgets/public_custom_widgets/custom_text.dart';

class AviliableScreenCustomHeader extends StatelessWidget {
  const AviliableScreenCustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
                topPadding:
                    AppSizes.aviliableSceenHeaderTopPaddingHeaderTextOne,
                leftPadding: AppSizes.aviliableScreenHeaderLeftPaddingTextTwo,
                fontWeight: AppTextStyles.fontWeight_w600,
                text: 'Available time',
                fontSize: AppSizes.aviliableScreenHeaderTextOneFontSize,
                textColor: AppColors.aviliableScreenHeaderTextOneColor),
            CustomText(
                fontFamily: AppTextStyles.primeryFontFamily,
                fontWeight: AppTextStyles.fontWeight_w400,
                topPadding: AppSizes.aviliableScreenHeaderTextTwoTopPadding,
                leftPadding: AppSizes.aviliableScreenHeaderTextTwoLeftPadding,
                text: 'Adjust to your schedule',
                fontSize: AppSizes.aviliableScreenHeaderTextTwoLeftPadding,
                textColor: AppColors.aviliableScreenHeaderTextTwoColor)
          ],
        ),
        Container(
          margin: EdgeInsets.only(
              top: AppSizes.aviliableScreenHeaderCelenderContainerTopMargin,
              left: AppSizes.aviliableScreenHeaderCelenderContainerLeftMargin),
          width: AppSizes.aviliableScreenHeaderCelenderContainerWidth,
          height: AppSizes.aviliableScreenHeaderCelenderContainerHeight,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                  AppSizes.aviliableScreenHeaderCelenderContainerRadius),
              color: AppColors.aviliableScreenClenderContainerColor),
          child: Icon(
            Icons.calendar_month_outlined,
            color: AppColors.aviliableScreenClenderIconColor,
          ),
        )
      ],
    );
  }
}
