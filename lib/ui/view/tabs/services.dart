import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:protfolio/ui/widgets/default_text.dart';
import 'package:protfolio/ui/widgets/image_viewer.dart';

import '../../../core/constants/const_colors.dart';
import '../../widgets/services_tile.dart';

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: DefaultText(
            txt: 'Services',
            clr: ConstColors.kPrimaryColor,
            fs: MediaQuery.sizeOf(context).width / 20,
          ),
        ),
        Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.centerEnd,
          children: [
            const ImageViewer(
              imgPath: 'assets/images/development.png',
              isCircle: false,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(
                    txt: "Flutter Development",
                    clr: ConstColors.kTextPrimaryColor,
                    fs: MediaQuery.sizeOf(context).width / 30,
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 20,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 1.7,
                    child: DefaultText(
                      txt:
                          "DartSync Pvt Ltd stands as a distinguished leader in the realm of mobile app development, boasting a team of industry-recognized developers and designers. "
                          "Specializing in bespoke mobile application design and development services, we bring a wealth of expertise to every project. "
                          "Our adept team excels in leveraging a diverse array of technologies, tools, SDKs, programming languages, and comprehensive tech stacks to craft cutting-edge, technology-driven mobile applications. "
                          "With a robust background in cross-platform app development, we employ the latest methodologies and stay abreast of the most current technologies to ensure the delivery of top-tier mobile solutions."
                          "We are providing outstanding cross-platform mobile application development services that meet market demands, strengthen the company’s brand identity, and encourage business expansion and growth.",
                      clr: ConstColors.kTextSecondaryColor,
                      fs: MediaQuery.sizeOf(context).width / 80,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height / 20,
                  ),
                ],
              ),
            ),
          ],
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 3.4,
              height: MediaQuery.sizeOf(context).height / 3,
              child: const ServiceTile(
                  title: "Mobile Development",
                  desc:
                  "DartSync excels in professional Flutter mobile development, delivering cutting-edge, cross-platform solutions with excellence and precision. Partner with us for transformative mobile experiences."),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 3.4,
              height: MediaQuery.sizeOf(context).height / 3,
              child: const ServiceTile(
                title: 'Web Development',
                desc:
                'DartSync excels in cutting-edge Flutter web development, seamlessly blending innovation and expertise for sophisticated, responsive solutions. Partner with us for a journey into excellence.',
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width / 3.4,
              height: MediaQuery.sizeOf(context).height / 3,

              child: const ServiceTile(
                  title: "Desktop Development",
                  desc:
                  "DartSync excels in Flutter desktop development, delivering transformative, feature-rich applications with precision and innovation. Partner with us for an exceptional software journey."),
            )
          ],
        ),
      ],
    );
  }
}
