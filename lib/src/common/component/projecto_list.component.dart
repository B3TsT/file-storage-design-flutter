import 'package:flutter/material.dart';

import '../../features/projects_list/presentation/widget/widget.dart';
import '../common.dart';

class ProjectListComponent extends StatelessWidget {
  const ProjectListComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
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
    );
  }
}
