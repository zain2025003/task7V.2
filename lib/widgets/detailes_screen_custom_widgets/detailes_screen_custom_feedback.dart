import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_images.dart';

class DetailesScreenCustomFeedback extends StatelessWidget {
  const DetailesScreenCustomFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
          leading:
              Image(image: AssetImage(AppImages.detailesScreenCardBacground))),
    );
  }
}
