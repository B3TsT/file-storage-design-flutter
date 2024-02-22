import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import 'widget.dart';

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
          SectionDividerWidget(
            title: StringsProjectDetails.projects,
            buttonLabel: StringsProjectDetails.createNew,
            textStyle: textTheme.titleMedium,
            padding: 0,
          ),
          const SizedBox(height: 20),
          CardProjectWidget(
            label: StringsProjectDetails.chatbox,
            onPressed: () {},
          ),
          CardProjectWidget(
            label: StringsProjectDetails.timeNote,
            onPressed: () {},
          ),
          CardProjectWidget(
            label: StringsProjectDetails.something,
            onPressed: () {},
          ),
          CardProjectWidget(
            label: StringsProjectDetails.other,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
