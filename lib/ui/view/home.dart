import 'package:flutter/material.dart';
import 'package:portfolio/ui/view/tablet/ViewTablet.dart';
import 'package:portfolio/ui/view/web/ViewWeb.dart';
import '../../core/constants/const_colors.dart';
import '../widgets/common_bottom_nav.dart';
import 'mobile/ViewMobile.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key,});



  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstColors.kBackgroundColor,

        bottomNavigationBar: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const CommonBottomNav(),
        ),
        body: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 640) {
            return ViewMobile();
          } else if (constraints.maxWidth < 1007) {
            return ViewTablet();
          } else {
            return const ViewWeb();
          }
        }));
  }
}
