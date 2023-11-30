import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:protfolio/core/constants/const_neumorphic.dart';
import 'package:protfolio/ui/widgets/skills_widgets.dart';
import '../../../core/constants/const_colors.dart';
import '../../widgets/default_text.dart';
import '../../widgets/pie_timer/neu_progress_pie_bar.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: DefaultText(
          txt: 'Skills',
          clr: ConstColors.kPrimaryColor,
          fs: MediaQuery.sizeOf(context).width / 20,
        ),
      ),
      SizedBox(height: MediaQuery.sizeOf(context).height / 20),
      const SkillsWidgets(
        title: "Flutter",
        dataList: [
          {"per": 95, "title": "Dart"},
          {"per": 80, "title": "UI/UX"},
          {"per": 85, "title": "Responsive"},
          {"per": 100, "title": "Android/IOS"},
          {"per": 100, "title": "Clean Code"},
          {"per": 75, "title": "DI"},
        ],
      ),
      SizedBox(height: MediaQuery.sizeOf(context).height / 20),
      const SkillsWidgets(
        title: "State Management",
        dataList: [
          {"per": 95, "title": "BLoC"},
          {"per": 80, "title": "Hydrated BLoC"},
          {"per": 95, "title": "GetX"},
          {"per": 100, "title": "Provider"},
          {"per": 50, "title": "RiverPod"},
          {"per": 20, "title": "MobX"},
        ],
      ),
      SizedBox(height: MediaQuery.sizeOf(context).height / 20),
      const SkillsWidgets(
        title: "Databases",
        dataList: [
          {"per": 75, "title": "SqLite"},
          {"per": 90, "title": "Hive"},
          {"per": 95, "title": "Firebase"},
          {"per": 70, "title": 'SupaBase'},
          {"per": 95, "title": "MySQL"},
          {"per": 70, "title": "PostGreSql"},
        ],
      ),

      SizedBox(height: MediaQuery.sizeOf(context).height / 20),
    ]);
  }
}
