import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_icons.dart';
import 'package:task7_v2/core/classes/constants/app_images.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/app_text_styles.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';
import 'package:task7_v2/widgets/public_custom_widgets/custom_svg.dart';
import 'package:task7_v2/widgets/public_custom_widgets/custom_text.dart';

class DetailesScreenCustomUserInformation extends StatelessWidget {
  const DetailesScreenCustomUserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          CustomSvg(
              topPadding: AppSizes.detailesScreenStopWatchTopPadding,
              letfPadding: AppSizes.detailesScreenStopWatchLeftPadding,
              pictureLink: AppIcons.detailesScreenStopWatchIconLink,
              pictureWidth: AppSizes.detailesScreenStopWacthIconWidth,
              pictureHeight: AppSizes.detailesScreenStopWatchHeight),
          CustomText(
              text: '5h 21m',
              topPadding: AppSizes.detailesScreenTimerTopPadding,
              leftPadding: AppSizes.detailesScreenTimerLeftPadding,
              fontSize: AppSizes.detailesScreenTimerFontSize,
              textColor: AppColors.detailesTimerColor)
        ],
      ),
      ListTile(
          leading: Image(
            image: AssetImage(AppImages.detailesScreenAvatar),
            width: AppSizes.detailesScreenAvatarWidth,
            height: AppSizes.detailesScreenAvatarHeight,
          ),
          title: Text(
            'Laurel Seilha',
            style: TextStyle(
              fontWeight: AppTextStyles.fontWeight_w600,
            ),
          ),
          subtitle: Text(
            'Product Designer',
            style: TextStyle(
              fontSize: Responsive.responsiveWidth * 9.02,
              fontWeight: AppTextStyles.fontWeight_w400,
            ),
          ))
    ]);
  }
}
