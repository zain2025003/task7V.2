import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/app_text_styles.dart';
import 'package:task7_v2/core/classes/constants/services/const_data.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';
import 'package:task7_v2/widgets/public_custom_widgets/custom_text.dart';

class DetailesScreenCustomVideoDescription extends StatelessWidget {
  const DetailesScreenCustomVideoDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: AppSizes.detailesScreenVideoDescriptionRightMargin,
          left: AppSizes.detailesScreenVideoDescriptionLeftMargin,
          top: AppSizes.detailesScreenVideoDescriptionTopMargin),
      width: AppSizes.detailesScreenVideoDescriptionWidth,
      height: AppSizes.detailesScreenVideoDescriptionHeight,
      child: CustomText(
          heightText: Responsive.responsiveHeight * 1.2,
          fontWeight: AppTextStyles.fontWeight_w400,
          text: ConstData.detailesScreenVideoDescription,
          fontSize: AppSizes.detailesScreenDescriptionVideoFontSize,
          textColor: AppColors.detailesVedioDescription),
    );
  }
}
