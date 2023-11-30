import 'package:flutter/material.dart';

import '../../core/constants/const_colors.dart';
import '../../core/utils/timeline/style.dart';
import '../../core/utils/timeline/tile.dart';
import 'default_text.dart';

class TimeLineQualification extends StatelessWidget {
  final String title;
  final String company;
  final String duration;
  final String desc;
  final bool isEnd;

  const TimeLineQualification(
      {super.key,
      required this.title,
      required this.company,
      required this.duration,
      required this.desc,
      required this.isEnd});

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      beforeLineStyle: LineStyle(color: ConstColors.kPrimaryColor),
      afterLineStyle: LineStyle(color: ConstColors.kPrimaryColor),
      indicatorStyle: IndicatorStyle(
        color: ConstColors.kPrimaryColor,
      ),
      alignment: TimelineAlign.manual,
      lineXY: 0.5,
      startChild: isEnd ? const SizedBox.shrink() : buildPadding(context),
      endChild: isEnd ? buildPadding(context) : const SizedBox.shrink(),
    );
  }

  Padding buildPadding(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width / 70),
      child: Column(
        crossAxisAlignment:
            isEnd ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          DefaultText(
            isEnd: isEnd ? false : true,
            txt: title,
            clr: ConstColors.kPrimaryColor,
            fs: MediaQuery.sizeOf(context).width / 60,
          ),
          DefaultText(
            isEnd: isEnd ? false : true,
            txt: company,
            clr: ConstColors.kTextPrimaryColor,
            fs: MediaQuery.sizeOf(context).width / 70,
          ),
          DefaultText(
            isEnd: isEnd ? false : true,
            txt: duration,
            clr: ConstColors.kTextSecondaryColor,
            fs: MediaQuery.sizeOf(context).width / 80,
          ),
          DefaultText(
            isEnd: isEnd ? false : true,
            txt: desc,
            clr: ConstColors.kTextSecondaryColor,
            fs: MediaQuery.sizeOf(context).width / 100,
          ),
        ],
      ),
    );
  }
}
