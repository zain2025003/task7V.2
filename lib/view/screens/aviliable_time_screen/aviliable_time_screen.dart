import 'package:flutter/material.dart';
import 'package:task7_v2/core/classes/constants/services/media_query_services.dart';
import 'package:task7_v2/widgets/aviliable_screen_custom_widgets/aviliable_screen_custom_header.dart';
import 'package:task7_v2/widgets/aviliable_screen_custom_widgets/aviliable_screen_custom_timer.dart';
import 'package:task7_v2/widgets/aviliable_screen_custom_widgets/aviliable_screen_data_entry.dart';

class AviliableTimeScreen extends StatelessWidget {
  const AviliableTimeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: Responsive.screenWidth,
            height: Responsive.responsiveHeight * 583,
            decoration: BoxDecoration(
                color: const Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                    topRight:
                        Radius.circular(Responsive.responsiveHeight * 21.65),
                    topLeft:
                        Radius.circular(Responsive.responsiveHeight * 21.65))),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AviliableScreenCustomHeader(),
                AviliableScreenCustomTimer(),
                AviliableScreenDataEntry()
              ],
            ),
          )
        ],
      ),
    );
  }
}
