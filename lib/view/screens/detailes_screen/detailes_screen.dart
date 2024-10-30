import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
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
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailesScreenCustomHeader(),
              DetailesScreenCustomVideoUserInterFace(),
              DetailesScreenCustomVideoTitleAndTages(),
              DetailesScreenCustomVideoDescription(),
              DetailesScreenCustomUserInformation(),
              DetailesScreenCustomFeedback()
              //ttttrrree
            ],
          ),
        ),
      ),
    );
  }
}
