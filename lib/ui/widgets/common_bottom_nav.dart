import 'package:icons_plus/icons_plus.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:portfolio/core/constants/const_colors.dart';
import 'package:portfolio/ui/widgets/default_text.dart';
import 'package:url_launcher/url_launcher.dart';

class CommonBottomNav extends StatelessWidget {
  const CommonBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 20,
        left: 20,
        right: 20,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultText(
              txt: 'Developer © Kamran Farid 2019.',
              clr: ConstColors.kTextPrimaryColor,
              fs: 14,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      launchUrl(
                          Uri.parse('https://linkedin.com/in/kamisofts'));
                    },
                    icon: const Icon(Bootstrap.linkedin)),
                IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse('https://github.com/Kamiii75'));
                    },
                    icon: const Icon(Bootstrap.github)),
              ],
            ),  DefaultText(
              txt: 'Email: Kamisofts@gmail.com',
              clr: ConstColors.kTextPrimaryColor,
              fs: 14,
            ),
          ],
        ));
  }
}
