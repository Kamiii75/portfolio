import 'package:neumorphic_ui/neumorphic_ui.dart';
import 'package:protfolio/ui/widgets/pie_timer/neu_progress_pie_bar.dart';

import '../../core/constants/const_colors.dart';
import '../../core/constants/const_neumorphic.dart';
import 'default_text.dart';

class SkillsWidgets extends StatefulWidget {
  final String title;
  final List<Map<String, dynamic>> dataList;

  const SkillsWidgets({super.key, required this.title, required this.dataList});

  @override
  State<SkillsWidgets> createState() => _SkillsWidgetsState();
}

class _SkillsWidgetsState extends State<SkillsWidgets> {

  bool isShow=false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:isShow? MediaQuery.sizeOf(context).width / 4.8:MediaQuery.sizeOf(context).width / 18,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: InkWell(
              hoverColor: Colors.transparent,
              highlightColor:Colors.transparent ,
              splashColor:Colors.transparent ,
              onTap: ()=>setState(() =>isShow= !isShow),
              child: Neumorphic(
                style: ConstNeumorphic.neumorphicSquareStyle.copyWith(
                  color: ConstColors.kSurfaceColor,
                  boxShape: NeumorphicBoxShape.roundRect(
                    BorderRadius.vertical(
                      top: Radius.circular(MediaQuery.sizeOf(context).width / 50),
                      bottom:
                          Radius.circular(MediaQuery.sizeOf(context).width / 200),
                    ),
                  ),
                ),
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).width / 25,
                  width: MediaQuery.sizeOf(context).width / 3,
                  child: DefaultText(
                    isCenter: true,
                    txt: widget.title,
                    clr: ConstColors.kPrimaryColor,
                    fs: MediaQuery.sizeOf(context).width / 45,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Visibility(
              visible: isShow,
              child: SizedBox(
                height: MediaQuery.sizeOf(context).width / 5.5,
                width: MediaQuery.sizeOf(context).width -
                    MediaQuery.sizeOf(context).width / 9,
                child: Neumorphic(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  style: ConstNeumorphic.neumorphicSquareStyle.copyWith(
                    color: ConstColors.kSurfaceColor,
                    boxShape: NeumorphicBoxShape.roundRect(
                      const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).width / 2,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: widget.dataList.length,
                          itemBuilder: (context, index) => Center(
                            child: NeuProgressPieBar(
                                  percentage: widget.dataList[index]["per"],
                                  title: widget.dataList[index]["title"],
                                ),
                          )),

                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
