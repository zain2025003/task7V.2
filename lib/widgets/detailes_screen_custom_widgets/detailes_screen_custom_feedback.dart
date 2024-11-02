import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_images.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';

class DetailesScreenCustomFeedback extends StatelessWidget {
  const DetailesScreenCustomFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.responsiveHeight * 200,
      child: ListView.builder(
          itemCount: 100,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
                margin: EdgeInsets.only(
                    left: AppSizes.detailesScreenFeedBackContainerTopMargin),
                width: AppSizes.detailesScreenFeedBackContainerWidth,
                height: AppSizes.doubleScreenFeedBackContainerHeight,
                color: AppColors.detailesScreenFeedBackContainerColor,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: AppSizes.detailesScreenTageTopPadding),
                  child: ListTile(
                    leading: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image(
                          image: AssetImage(
                              AppImages.detailesScreenCardBackground),
                        ),
                        Icon(
                          Icons.play_arrow,
                          color: AppColors.detailesScreenFeedBackCardIconColor,
                        )
                      ],
                    ),
                    title: Text(
                      'How to get feedback on their products in just 5 days',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.detailescreenFeebBackTitleFontSize,
                      ),
                    ),
                    subtitle: Text(
                      '04:10m',
                      style: TextStyle(
                          fontSize:
                              AppSizes.detailescreenFeebBackSubTitleFontSize,
                          color: const Color(0xff8C8C8C)),
                    ),
                  ),
                ));
          }),
    );
  }
}
