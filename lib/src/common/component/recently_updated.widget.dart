import 'package:flutter/material.dart';

import '../../features/projects_list/presentation/widget/widget.dart';
import '../common.dart';
import 'projecto_list.component.dart';

class RecentlyUpdatedComponent extends StatelessWidget {
  const RecentlyUpdatedComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width - 50;
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          SectionDividerWidget(
            title: StringsProjectDetails.recentlyUpdated,
            textStyle: textTheme.labelLarge,
            padding: 0,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const BuildFileColumnWidget(
                image: "assets/icons/sketch.png",
                title: StringsProjectDetails.desktop,
                description: StringsProjectDetails.extensionSketch,
              ),
              SizedBox(width: width * .03),
              const BuildFileColumnWidget(
                image: "assets/icons/sketch.png",
                title: StringsProjectDetails.mobile,
                description: StringsProjectDetails.extensionSketch,
              ),
              SizedBox(width: width * .03),
              const BuildFileColumnWidget(
                image: "assets/icons/prd.png",
                title: StringsProjectDetails.interaction,
                description: StringsProjectDetails.extensionPrd,
              ),
            ],
          ),
          const Divider(height: 60),
          const ProjectListComponent(),
        ],
      ),
    );
  }
}
