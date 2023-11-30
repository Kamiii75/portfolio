import 'package:icons_plus/icons_plus.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:protfolio/core/constants/const_colors.dart';
import 'package:protfolio/core/models/model_project.dart';

import '../../core/constants/const_neumorphic.dart';
import 'circle_icon_button.dart';
import 'default_text.dart';

class ServiceTile extends StatelessWidget {
  const ServiceTile({super.key, required this.title, required this.desc});

  final String title;
  final String desc;

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
                    txt: title,
                    clr: ConstColors.kPrimaryColor,
                    fs: MediaQuery.sizeOf(context).width / 60,
                  ),

                  const SizedBox(height: 10),
                  DefaultText(
                    txt: desc,
                    // txt: desc.length < 400
                    //     ? desc
                    //     : "${desc.substring(0, 400)}...",
                    clr: ConstColors.kTextSecondaryColor,
                    fs: MediaQuery.sizeOf(context).width / 100,
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
