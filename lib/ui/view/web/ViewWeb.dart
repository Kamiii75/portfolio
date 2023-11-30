import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:protfolio/ui/view/tabs/experiences.dart';
import 'package:protfolio/ui/view/tabs/projects.dart';
import 'package:protfolio/ui/view/tabs/skills.dart';

import '../../../core/constants/const_colors.dart';
import '../tabs/about_me.dart';
import '../tabs/contact_us.dart';
import '../tabs/introduction.dart';
import '../tabs/qualifications.dart';
import '../tabs/services.dart';

class ViewWeb extends StatelessWidget {
  const ViewWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstColors.kBackgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width / 20),
            child: Column(
              children: [
                const Introduction(),
                SizedBox(height: MediaQuery.sizeOf(context).height / 50),
                const AboutMe(),
                SizedBox(height: MediaQuery.sizeOf(context).height / 50),
                const Skills(),
                SizedBox(height: MediaQuery.sizeOf(context).height / 50),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2.5,
                      child: const Experiences(),
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width / 2.5,
                      child: const Qualifications(),
                    ),
                  ],
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height / 50),
                const Projects(),
                SizedBox(height: MediaQuery.sizeOf(context).height / 50),
                const Services(),
                SizedBox(height: MediaQuery.sizeOf(context).height / 50),
                const ContactUs(),
                SizedBox(height: MediaQuery.sizeOf(context).height / 50),
              ],
            ),
          ),
        ));
  }
}
