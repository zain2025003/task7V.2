import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'dart:ui';
import 'package:task7_v2/core/classes/constants/app_images.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';

class DetailesScreenCustomVideoUserInterFace extends StatelessWidget {
  const DetailesScreenCustomVideoUserInterFace({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: AppSizes.detailesNavigationButtonTopPadding,
            left: AppSizes.detailesScreenVedioUserInterFaceLeftPadding,
            right: AppSizes.detailesScreenUserInterFaceRightPadding,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppSizes.detailesScreenUserInterFaceRadius,
            ),
          ),
          child: Image(
            image: AssetImage(AppImages.detailesScreenVideoInterFaceBackground),
          ),
        ),
        Transform.rotate(
          angle: AppSizes.detailesScreenVideoCoveAngle,
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
              child: Container(
                width: AppSizes.detailesScreenClipOvalWidth,
                height: AppSizes.detailesScreenClipOvalHeight,
                color: AppColors.detailesScreenClipColor.withOpacity(0.1),
                child: Image.asset(
                  AppImages.detailesScreenPlayVideoCover,
                  color: const Color.fromARGB(255, 255, 255, 255)
                      .withOpacity(0.24),
                  colorBlendMode: BlendMode.difference,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
