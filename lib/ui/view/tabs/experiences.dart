import 'package:flutter/material.dart';
import '../../../core/constants/const_colors.dart';
import '../../../core/utils/timeline/style.dart';
import '../../../core/utils/timeline/tile.dart';
import '../../widgets/default_text.dart';
import '../../widgets/time_line_qualification.dart';

class Experiences extends StatelessWidget {
  const Experiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: DefaultText(
          txt: 'Experiences',
          clr: ConstColors.kPrimaryColor,
          fs: MediaQuery
              .sizeOf(context)
              .width / 20,
        ),
      ),
      SizedBox(height: MediaQuery
          .sizeOf(context)
          .height / 20),


      const TimeLineQualification(
        title:'Lead Flutter Developer',
        company:'SoftLinkify Pvt Ltd',
        duration:'July 2022 - Present',
        desc
        :'On-Site Full Time',
        isEnd:false,),

      const TimeLineQualification(
        title:'Lead Flutter Developer',
        company:'EncoderBytes Pvt Ltd',
        duration:'July 2021 - July 2022',
        desc
        :'On-Site Full Time',
        isEnd:true,),




      const TimeLineQualification(
        title:'Flutter Developer',
        company:'MAAHEY INC',
        duration:'July 2021 - July 2022',
        desc
            :'Remote Full Time',
        isEnd:false,),


      const TimeLineQualification(
        title:'Lead Flutter Developer',
        company:'DartSync Pvt Ltd',
        duration:'Jan 2019 - Present',
        desc
            :'On-Site Part Time',
        isEnd:true,),
      const TimeLineQualification(
        title: 'Android Developer',
        company: 'Eclairios Pvt Ltd',
        duration: 'Dec 2017 - Dec 2018',
        desc: 'On-Site Full Time',
        isEnd: false,),


    ]);
  }
}
