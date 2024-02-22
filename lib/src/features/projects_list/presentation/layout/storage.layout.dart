import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import '../view/view.dart';
import '../widget/widget.dart';

class StorageLayout extends StatelessWidget {
  const StorageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 25),
        SectionDividerWidget(
          title: StringsProjectDetails.titleStorage,
          label: StringsProjectDetails.useStorage,
          buttonLabel: StringsProjectDetails.updrage,
        ),
        SizedBox(height: 25),
        StorageInformationView(),
        SizedBox(height: 15),
        
      ],
    );
  }
}
