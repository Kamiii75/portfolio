import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:protfolio/core/constants/const_colors.dart';

import '../../core/constants/const_neumorphic.dart';

class ImageViewer extends StatelessWidget {
  final bool isCircle;
  final String imgPath;

  const ImageViewer({super.key, this.isCircle = true, required this.imgPath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).width / 4,
      width: MediaQuery.sizeOf(context).width / 4,
      child: Neumorphic(
        style: isCircle
            ? ConstNeumorphic.neumorphicStyle
            : ConstNeumorphic.neumorphicStyle.copyWith(
          color: ConstColors.kImageBg,
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(
                    MediaQuery.sizeOf(context).width / 200)),
              ),
        child: Image.asset(
          imgPath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
