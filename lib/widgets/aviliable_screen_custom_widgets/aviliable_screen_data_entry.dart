import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_icons.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/app_text_styles.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';
import 'package:task7_v2/widgets/public_custom_widgets/custom_svg.dart';
import 'package:task7_v2/widgets/public_custom_widgets/custom_text.dart';

class AviliableScreenDataEntry extends StatelessWidget {
  const AviliableScreenDataEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
            leftPadding:
                AppSizes.aviliableTimeScreenDataEntryCustomTextOneLeftPadding,
            fontWeight: AppTextStyles.fontWeight_w600,
            topPadding:
                AppSizes.aviliableTimeScreenDataEntryCustomTextOneTopPadding,
            text: 'Email',
            fontSize:
                AppSizes.aviliableTimeScreenDataEntryCustomTextOneFontSize,
            textColor: AppColors.aviliableTimeScreenDataEntryCustomTextColor),
        Padding(
          padding: EdgeInsets.only(
              top: AppSizes.aviliableTimeScreenDataEntryTextFieldOneTopPadding,
              left: AppSizes.aviliableScreenDataEntryTextFiledLeftPadding,
              right:
                  AppSizes.aviliableTimeScreenDataEntryTextFieldRightPadding),
          child: TextFormField(
            decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors
                            .aviliableTimeScreenDataEntryTextFieldBorderColor),
                    borderRadius: BorderRadius.all(Radius.circular(
                        AppSizes.aviliableTimeScreenDataEntryTextFieldRadius))),
                enabled: false,
                filled: true,
                fillColor:
                    AppColors.aviliableTimeScreenDataEntryTextFieldFillColor,
                hintText: 'samuel_herickson@gmail.com',
                hintStyle: TextStyle(
                    fontWeight: AppTextStyles.fontWeight_w400,
                    color: AppColors
                        .aviliableTimeScreenDataEntryTextFieldHintTextColor)),
          ),
        ),
        CustomText(
            leftPadding:
                AppSizes.aviliableTimeScreenDataEntryCustomTextTwoLeftPadding,
            fontWeight: AppTextStyles.fontWeight_w600,
            topPadding:
                AppSizes.aviliableTimeScreenDataEntryCustomTextTwoTopPadding,
            text: 'Telp number',
            fontSize:
                AppSizes.aviliableTimeScreenDataEntryCustomTextTwoFontSize,
            textColor: AppColors.aviliableTimeScreenDataEntryCustomTextColor),
        Padding(
          padding: EdgeInsets.only(
              top: Responsive.responsiveHeight * 2.68,
              left: AppSizes.aviliableScreenDataEntryTextFiledLeftPadding,
              right:
                  AppSizes.aviliableTimeScreenDataEntryTextFieldRightPadding),
          child: TextFormField(
            decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: AppColors
                            .aviliableTimeScreenDataEntryTextFieldBorderColor),
                    borderRadius: BorderRadius.all(Radius.circular(
                        AppSizes.aviliableTimeScreenDataEntryTextFieldRadius))),
                enabled: false,
                filled: true,
                fillColor:
                    AppColors.aviliableTimeScreenDataEntryTextFieldFillColor,
                hintText: '(001) 34 4567890 ', //hint text
                hintStyle: TextStyle(
                    color: AppColors
                        .aviliableTimeScreenDataEntryTextFieldHintTextColor)),
          ),
        ),
        CustomText(
            leftPadding:
                AppSizes.aviliableTimeScreenDataEntryCustomTextOneLeftPadding,
            fontWeight: AppTextStyles.fontWeight_w600,
            topPadding:
                AppSizes.aviliableTimeScreenDataEntryCustomTextThreeTopPadding,
            text: 'Schedule date & time',
            fontSize:
                AppSizes.aviliableTimeScreenDataEntryCustomTextOneFontSize,
            textColor: const Color(0xff303030)),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CustomSvg(
                    letfPadding: Responsive.responsiveWidth * 16.26,
                    topPadding: Responsive.responsiveHeight * 3.38,
                    pictureLink: AppIcons.aviliableTimeChckBoxIcon,
                    pictureWidth: Responsive.responsiveWidth * 18.1,
                    pictureHeight: Responsive.responsiveHeight * 18.09),
                CustomSvg(
                    topPadding: Responsive.responsiveHeight * 4,
                    letfPadding: Responsive.responsiveWidth * 17,
                    pictureLink: AppIcons.aviliableTimeChckIcon,
                    pictureWidth: Responsive.responsiveWidth * 8.03,
                    pictureHeight: Responsive.responsiveWidth * 5.88)
              ],
            ),
            CustomText(
                leftPadding: Responsive.responsiveWidth * 7.04,
                fontWeight: AppTextStyles.fontWeight_w600,
                topPadding: Responsive.responsiveHeight * 2.39,
                text: '12 October, 2020 at 09.45 AM',
                fontSize: Responsive.responsiveWidth * 12.33,
                textColor: const Color(0xff9D9FA0)),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: Responsive.responsiveHeight * 33.88,
              left: Responsive.responsiveWidth * 16.65,
              right: Responsive.responsiveWidth * 14.3),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(Responsive.responsiveWidth * 309,
                      Responsive.responsiveWidth * 51),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          Responsive.responsiveHeight * 7.22)),
                  backgroundColor: const Color(0xffFF8500)),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text(
                'Apply',
                style: TextStyle(color: Color(0xffFFFFFF)),
              )),
        )
      ],
    );
  }
}
