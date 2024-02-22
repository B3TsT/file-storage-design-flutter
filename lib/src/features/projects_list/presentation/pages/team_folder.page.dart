import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import '../layout/layout.dart';

class TeamFolderPage extends StatelessWidget {
  const TeamFolderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBarLayout(
          title: StringsProjectDetails.title,
          subTitle: StringsProjectDetails.subTitle,
        ),
        StorageLayout(),
        SizedBox(height: 15),
        Divider(height: 20),
        RecentlyUpdatedComponent(),
      ],
    );
  }
}
