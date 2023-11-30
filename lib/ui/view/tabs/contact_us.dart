import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:protfolio/ui/widgets/image_viewer.dart';
import '../../../core/constants/const_colors.dart';
import '../../../core/constants/const_neumorphic.dart';
import '../../widgets/default_text.dart';
import '../../widgets/default_text_field.dart';
import '../../widgets/resume_widget.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: DefaultText(
            txt: 'Contact US',
            clr: ConstColors.kPrimaryColor,
            fs: MediaQuery.sizeOf(context).width / 20,
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height / 40,
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width ,
          child: Align(alignment: Alignment.centerLeft,
            child: DefaultText(
              txt:
                  "If You Are Interested In Talking To Us About A Project,\nPlease Send Us A Message",
              clr: ConstColors.kTextSecondaryColor,
              fs: MediaQuery.sizeOf(context).width / 50,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height / 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Neumorphic(
                  style: ConstNeumorphic.neumorphicSquareStyle
                      .copyWith(color: ConstColors.kBackgroundColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DefaultTextField(
                        hnt: 'Your Name',
                        controller: TextEditingController(),
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      DefaultTextField(
                        hnt: 'Your Email',
                        controller: TextEditingController(),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      DefaultTextField(
                        hnt: 'Subject',
                        controller: TextEditingController(),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 50,
                      ),
                      DefaultTextField(
                        hnt: 'Message',
                        controller: TextEditingController(),
                        keyboardType: TextInputType.text,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Center(
                  child: ImageViewer(
                    imgPath: 'assets/images/stay_at_home_isometric_set.jpg',
                    isCircle: false,
                  ),
                ),    SizedBox(
                  height: MediaQuery.sizeOf(context).height / 20,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 4,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {},
                      child: Neumorphic(
                        style: ConstNeumorphic.neumorphicSquareStyle.copyWith(
                          color: ConstColors.kBackgroundColor,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                        ),
                        child: SizedBox(
                          width: MediaQuery.sizeOf(context).width / 7,
                          height: MediaQuery.sizeOf(context).width / 21,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.send,
                                size: MediaQuery.sizeOf(context).width / 50,
                                color: ConstColors.kPrimaryColor,
                              ),
                              DefaultText(
                                txt: "Send",
                                clr: ConstColors.kPrimaryColor,
                                fs: MediaQuery.sizeOf(context).width / 50,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
