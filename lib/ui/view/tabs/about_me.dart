import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:portfolio/ui/widgets/default_text.dart';
import 'package:portfolio/ui/widgets/image_viewer.dart';

import '../../../core/constants/const_colors.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: DefaultText(
        txt: 'About Me',
        clr: ConstColors.kPrimaryColor,
        fs: MediaQuery.sizeOf(context).width / 20,
      ),),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ImageViewer(
            imgPath: 'assets/images/3d-portrait-people.jpg',
            isCircle: false,
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultText(
                    txt: "As the Lead Full Stack Flutter Developer, "
                        "I lead a dynamic team in creating captivating and innovative Flutter applications that transcend client expectations. "
                        "Our commitment to beauty and functionality ensures that each project becomes a masterpiece in the world of digital experiences.",
                    clr: ConstColors.kTextSecondaryColor,
                    fs: MediaQuery.sizeOf(context).width / 80),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefaultText(
                          isCenter: true,
                          txt: '4+',
                          clr: ConstColors.kTextPrimaryColor,
                          fs: MediaQuery.sizeOf(context).width / 75,
                        ),
                        DefaultText(
                          isCenter: true,
                          txt: 'Years\nExperience',
                          clr: ConstColors.kTextSecondaryColor,
                          fs: MediaQuery.sizeOf(context).width / 80,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefaultText(
                          isCenter: true,
                          txt: '50+',
                          clr: ConstColors.kTextPrimaryColor,
                          fs: MediaQuery.sizeOf(context).width / 75,
                        ),
                        DefaultText(
                          isCenter: true,
                          txt: 'Projects\nCompleted',
                          clr: ConstColors.kTextSecondaryColor,
                          fs: MediaQuery.sizeOf(context).width / 80,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DefaultText(
                          isCenter: true,
                          txt: '5+',
                          clr: ConstColors.kTextPrimaryColor,
                          fs: MediaQuery.sizeOf(context).width / 75,
                        ),
                        DefaultText(
                          isCenter: true,
                          txt: 'Companies\nWorked',
                          clr: ConstColors.kTextSecondaryColor,
                          fs: MediaQuery.sizeOf(context).width / 80,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
