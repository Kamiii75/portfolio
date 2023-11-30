import 'package:flutter/material.dart';
import 'package:portfolio/core/constants/app_data.dart';
import 'package:portfolio/ui/widgets/project_tile.dart';

class ProjectGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;

  const ProjectGrid({super.key, this.crossAxisCount = 3, this.ratio = 1.3});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: AppData.projectLists.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return ProjectTile(mdl: AppData.projectLists[index]);
      },
    );
  }
}
