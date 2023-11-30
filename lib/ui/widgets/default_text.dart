import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic_ui/neumorphic_ui.dart';

import '../../core/constants/const_colors.dart';
import '../../core/constants/const_neumorphic.dart';

class DefaultText extends StatelessWidget {
  final String txt;
  final Color clr;
  final double fs;

  final bool isCenter;
  final bool isEnd;

  const DefaultText({
    super.key,
    required this.txt,
    required this.clr,
    required this.fs,
    this.isCenter = false,
    this.isEnd = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(txt,
        textAlign: isCenter
            ? TextAlign.center
            : isEnd
                ? TextAlign.end
                : TextAlign.start,
        style: GoogleFonts.righteous(
            color: clr, fontSize: fs, fontWeight: FontWeight.normal));
  }
}
