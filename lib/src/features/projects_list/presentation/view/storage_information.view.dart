import 'package:flutter/material.dart';

import '../../../../common/common.dart';
import '../widget/storage_bar.widget.dart';

class StorageInformationView extends StatelessWidget {
  const StorageInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      // TODO: Transform the row into a listview to allow the scroll
      child: Row(
        children: [
          BuildFileSizeChart(
            title: StringsProjectDetails.sources,
            space: .3,
          ),
          SizedBox(width: 2),
          BuildFileSizeChart(
            title: StringsProjectDetails.docs,
            color: Pallete.redColor,
            space: .25,
          ),
          SizedBox(width: 2),
          BuildFileSizeChart(
            title: StringsProjectDetails.images,
            color: Pallete.yellowColor,
            space: .20,
          ),
          SizedBox(width: 2),
          BuildFileSizeChart(
            color: Pallete.greyColor,
            space: .23,
          ),
        ],
      ),
    );
  }
}
