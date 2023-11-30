import 'package:flutter/cupertino.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:protfolio/core/constants/const_colors.dart';
import 'package:protfolio/core/constants/const_neumorphic.dart';
import 'package:protfolio/ui/widgets/default_text.dart';
import 'package:url_launcher/url_launcher.dart';

class WatchResumeClip extends StatelessWidget {
  const WatchResumeClip({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width / 5,
          child: const Divider(
            color: Colors.white,
            thickness: 1,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.sizeOf(context).width / 70),
          child: InkWell(
            hoverColor: Colors.transparent,
            highlightColor:Colors.transparent ,
            splashColor:Colors.transparent ,
            onTap: () {
              launchUrl(Uri.parse(
                  'https://drive.google.com/file/d/1qJfpeLG_oCDnoyxGkXnPQZLOGcpoqUDe/view?usp=sharing'));
            },
            child: Neumorphic(
              style: ConstNeumorphic.neumorphicStyle,
              child: Icon(
                CupertinoIcons.play_circle_fill,
                size: MediaQuery.sizeOf(context).width / 20,
              ),
            ),
          ),
        ),
        DefaultText(
          txt: 'Show Resume',
          clr: ConstColors.kTextSecondaryColor,
          fs: MediaQuery.sizeOf(context).width / 70,
        ),
      ],
    );
  }
}
