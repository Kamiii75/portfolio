import 'package:icons_plus/icons_plus.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:portfolio/core/constants/const_colors.dart';
import 'package:portfolio/core/models/model_project.dart';

import '../../core/constants/const_neumorphic.dart';
import 'circle_icon_button.dart';
import 'default_text.dart';

class ProjectTile extends StatelessWidget {
  const ProjectTile({super.key, required this.mdl});

  final ModelProject mdl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.sizeOf(context).width / 100),
      child: InkWell(
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHover: (value) {
          //  controller.onHover(index, value);
        },
        onTap: () {
          //   ImageViewer(context,projectList[index].image);
        },
        borderRadius: BorderRadius.circular(30),
        child: Neumorphic(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).width / 100),
          style: ConstNeumorphic.neumorphicSquareStyle.copyWith(
            color: ConstColors.kSurfaceColor,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(MediaQuery.sizeOf(context).width / 100),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultText(
                    txt: mdl.title,
                    clr: ConstColors.kPrimaryColor,
                    fs: MediaQuery.sizeOf(context).width / 60,
                  ),
                  DefaultText(
                    txt: mdl.company.toString(),
                    clr: ConstColors.kTextPrimaryColor,
                    fs: MediaQuery.sizeOf(context).width / 80,
                  ),
                  const SizedBox(height: 5),
                  DefaultText(
                    txt: mdl.description.length < 200
                        ? mdl.description
                        : "${mdl.description.substring(0, 200)}...",
                    clr: ConstColors.kTextSecondaryColor,
                    fs: MediaQuery.sizeOf(context).width / 100,
                  ),

                ],
              ),
              Padding(
                padding:  const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    mdl.githubLink == null
                        ? const SizedBox.shrink()
                        : CircleIconButton(
                      link: mdl.githubLink!,
                      icon: Bootstrap.github,
                    ),
                    mdl.appStoreLink == null
                        ? const SizedBox.shrink()
                        : CircleIconButton(
                      link: mdl.appStoreLink!,
                      icon: Bootstrap.apple,
                    ),
                    mdl.playStoreLink == null
                        ? const SizedBox.shrink()
                        : CircleIconButton(
                      link: mdl.playStoreLink!,
                      icon: Bootstrap.google_play,
                    ),
                    mdl.websiteLink == null
                        ? const SizedBox.shrink()
                        : CircleIconButton(
                      link: mdl.websiteLink!,
                      icon: Bootstrap.dribbble,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
