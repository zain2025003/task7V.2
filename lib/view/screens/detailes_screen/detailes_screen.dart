import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/view/screens/aviliable_time_screen/aviliable_time_screen.dart';
import 'package:task7_v2/widgets/detailes_screen_custom_widgets/detailes_screen_custom_feedback.dart';
import 'package:task7_v2/widgets/detailes_screen_custom_widgets/detailes_screen_custom_header.dart';
import 'package:task7_v2/widgets/detailes_screen_custom_widgets/detailes_screen_custom_user_information.dart';
import 'package:task7_v2/widgets/detailes_screen_custom_widgets/detailes_screen_custom_video_description.dart';
import 'package:task7_v2/widgets/detailes_screen_custom_widgets/detailes_screen_custom_video_title_and_tags.dart';
import 'package:task7_v2/widgets/detailes_screen_custom_widgets/detailes_screen_custom_video_user_face.dart';

class DetailesScreen extends StatelessWidget {
  const DetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.detailesBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailesScreenCustomHeader(),
                  DetailesScreenCustomVideoUserInterFace(),
                  DetailesScreenCustomVideoTitleAndTages(),
                  DetailesScreenCustomVideoDescription(),
                  DetailesScreenCustomUserInformation(),
                  DetailesScreenCustomFeedback()
                ],
              ),
              Positioned(
                right: AppSizes.detailesScreenFollowClassRightPostioned,
                left: AppSizes.detailesScreenFollowClassLeftPostioned,
                top: AppSizes.detailesScreenFollowClassTopPostioned,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        AppColors.detailesScreenFollowClassButtonColor,
                    fixedSize: Size(
                        AppSizes.detailesScreenFollowClassFixedSizeWidth,
                        AppSizes.detailesScreenFollowClassFixedSizeHeight),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          AppSizes.detailesScreenFollowClassRadius),
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return const SingleChildScrollView(
                          child: AviliableTimeScreen(),
                        );
                      },
                    );
                  },
                  child: Text(
                    'Follow class',
                    style: TextStyle(
                        fontSize:
                            AppSizes.detailesScreenFollowClassTextFontSize,
                        color: AppColors.detailesScreenFollowClassTextColor),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
