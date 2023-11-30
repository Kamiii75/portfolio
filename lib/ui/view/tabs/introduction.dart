import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:protfolio/ui/widgets/image_viewer.dart';
import '../../../core/constants/const_colors.dart';
import '../../widgets/default_text.dart';
import '../../widgets/resume_widget.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.loose,
      alignment: AlignmentDirectional.centerEnd,
      children: [
        const ImageViewer(imgPath: 'assets/images/3d-portrait-people-2.jpg'),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 10,
            ),
            DefaultText(
              txt: 'Hi,',
              clr: ConstColors.kPrimaryColor,
              fs: MediaQuery.sizeOf(context).width / 20,
            ),
            DefaultText(
              txt: "I'm Kamran Farid",
              clr: ConstColors.kTextPrimaryColor,
              fs: MediaQuery.sizeOf(context).width / 30,
            ),
            DefaultText(
              txt: "Full Stack Flutter Developer",
              clr: ConstColors.kTextSecondaryColor,
              fs: MediaQuery.sizeOf(context).width / 40,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 20,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 2,
              child: DefaultText(
                txt:
                    "Extensively seasoned in the domain of Flutter cross-platform application development, "
                    "I possess a wealth of expertise dedicated to consistently delivering high-caliber work characterized by precision and quality.",
                clr: ConstColors.kTextSecondaryColor,
                fs: MediaQuery.sizeOf(context).width / 80,
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 20,
            ),
            const WatchResumeClip(),
          ],
        ),
      ],
    );
  }
}
