import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:portfolio/core/constants/const_colors.dart';

import '../../../core/constants/const_neumorphic.dart';
import '../default_text.dart';
import 'neu_progress_painter.dart';

class NeuProgressPieBar extends StatelessWidget {
  final double percentage;
  final String title;

  const NeuProgressPieBar({
    super.key,
    required this.percentage,
    required this.title,
  });




  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: MediaQuery.sizeOf(context).width / 7,
      width: MediaQuery.sizeOf(context).width / 7,
      child: Neumorphic(
        style: ConstNeumorphic.neumorphicTimerStyle.copyWith(
          shape: NeumorphicShape.concave,
        ),
        child: Stack(
          children: <Widget>[
            Center(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).width / 8,
                child: CustomPaint(
                  painter: NeuProgressPainter(
                    circleWidth: MediaQuery.sizeOf(context).width / 30,
                    completedPercentage: percentage,
                    defaultCircleColor: Colors.transparent,
                  ),
                  child: const Center(),
                ),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.sizeOf(context).width / 12,
                width: MediaQuery.sizeOf(context).width / 12,
                decoration: BoxDecoration(
                    color: ConstColors.kBackgroundColor,
                    borderRadius: BorderRadius.circular(
                        MediaQuery.sizeOf(context).width / 12)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultText(
                        isCenter: true,
                        txt: title,
                        clr: ConstColors.kTextPrimaryColor,
                        fs: MediaQuery.sizeOf(context).width / 85,
                      ),
                      DefaultText(
                        isCenter: true,
                        txt: "$percentage %",
                        clr: ConstColors.kTextSecondaryColor,
                        fs: MediaQuery.sizeOf(context).width / 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

extension ColorUtils on Color {
  Color? mix(Color another, double amount) {
    return Color.lerp(this, another, amount);
  }
}
