import 'package:flutter/material.dart';
import 'package:protfolio/ui/widgets/projects_grid.dart';
import '../../../core/constants/const_colors.dart';
import '../../widgets/default_text.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: DefaultText(
          txt: 'Projects',
          clr: ConstColors.kPrimaryColor,
          fs: MediaQuery.sizeOf(context).width / 20,
        ),
      ),
      SizedBox(height: MediaQuery.sizeOf(context).height / 20),

      SizedBox(
        width:
        MediaQuery.sizeOf(context).width / 1.1,
        height:
        MediaQuery.sizeOf(context).height*1.4,
        child: const ProjectGrid(),
      )
    ]);
  }
}
