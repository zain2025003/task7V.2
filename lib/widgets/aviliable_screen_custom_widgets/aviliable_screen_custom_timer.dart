import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/app_colors.dart';
import 'package:task7_v2/core/classes/constants/app_sizes.dart';
import 'package:task7_v2/core/classes/constants/app_text_styles.dart';
import 'package:task7_v2/core/classes/constants/services/const_data.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';

class AviliableScreenCustomTimer extends StatefulWidget {
  const AviliableScreenCustomTimer({super.key});

  @override
  State<AviliableScreenCustomTimer> createState() =>
      _AviliableScreenCustomTimerState();
}

class _AviliableScreenCustomTimerState
    extends State<AviliableScreenCustomTimer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: AppSizes.aviliableTimeScreenTimerButtonTopPadding,
        left: AppSizes.aviliableScreenTimerButtonLeftPadding,
        right: AppSizes.aviliableScreenTimerButtonRightPadding,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(3, (rowIndex) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(3, (colIndex) {
                  bool isEnabled = (rowIndex == 0 && colIndex == 2) ||
                      (rowIndex == 1 && colIndex != 2) ||
                      (rowIndex == 2 && colIndex != 0);

                  int timeIndex = rowIndex * 3 + colIndex;

                  if (timeIndex >= ConstData.times.length) {
                    return const SizedBox.shrink();
                  }

                  return GestureDetector(
                    onTap: isEnabled
                        ? () {
                            setState(() {
                              ConstData.buttonStates[rowIndex][colIndex] =
                                  !ConstData.buttonStates[rowIndex][colIndex];
                            });
                          }
                        : null,
                    child: Container(
                      width: AppSizes.aviliableScreenTimerButtonWidth,
                      height: AppSizes.aviliableScreenTimerButtonHeight,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: isEnabled
                              ? AppColors.aviliableScreenTimerButtonEnableColor
                              : AppColors
                                  .aviliableScreenTimerButtonDisableColor,
                          width: Responsive.responsiveWidth * 0.9,
                        ),
                        color: isEnabled
                            ? (ConstData.buttonStates[rowIndex][colIndex]
                                ? AppColors
                                    .aviliableScreenTimerButtonWhenEnableColor
                                : AppColors
                                    .aviliaableScreenTimerButtonWhenDisableColor) //
                            : const Color(0xffEEEEEE),
                        borderRadius: BorderRadius.circular(
                            AppSizes.aviliableScreenTimerButtonRadius),
                      ),
                      child: Center(
                        child: Text(
                          ConstData.times[timeIndex],
                          style: TextStyle(
                            fontWeight: AppTextStyles.fontWeight_w500,
                            color: isEnabled
                                ? (ConstData.buttonStates[rowIndex][colIndex]
                                    ? Colors.white
                                    : const Color(0xFFFF8500)) //
                                : const Color(0xFFBDBDBD), //
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
              if (rowIndex < 2)
                SizedBox(height: Responsive.responsiveWidth * 13.74),
            ],
          );
        }),
      ),
    );
  }
}
