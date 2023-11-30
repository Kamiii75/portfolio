import 'package:flutter/material.dart';
import '../../../core/constants/const_colors.dart';
import '../../widgets/default_text.dart';
import '../../widgets/time_line_qualification.dart';

class Qualifications extends StatelessWidget {
  const Qualifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: DefaultText(
          txt: 'Qualifications',
          clr: ConstColors.kPrimaryColor,
          fs: MediaQuery
              .sizeOf(context)
              .width / 20,
        ),
      ),
      SizedBox(height: MediaQuery
          .sizeOf(context)
          .height / 20),

      SizedBox(height: MediaQuery
          .sizeOf(context)
          .height / 50),



      const TimeLineQualification(
        title:'MS\n(Computer Sciences)',
        company:'Agriculture,\nUniversity of Peshawar',
        duration:'Session: 2019 - 2022',
        desc
            :"",
        isEnd:false,),

      const TimeLineQualification(
        title: 'BS\n(Computer Sciences)',
        company: 'University of Peshawar',
        duration: 'Session: 2012 - 2016',
        desc
            : "",
        isEnd: true,),

    ]);
  }
}
