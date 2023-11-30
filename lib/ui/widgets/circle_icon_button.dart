import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/const_neumorphic.dart';

class CircleIconButton extends StatelessWidget {
  final String link;
  final IconData icon;

  const CircleIconButton({super.key, required this.link, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        launchUrl(Uri.parse(link));
      },
      child: Neumorphic(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(5),
        style: ConstNeumorphic.neumorphicStyle.copyWith(
          boxShape:  NeumorphicBoxShape.roundRect(BorderRadius.circular(5)),),
        child: Icon(icon,size: 25,),
      ),
    );
  }
}
