import 'package:flutter/material.dart';

import '../common.dart';

class BottomNavigationBarComponent extends StatelessWidget {
  const BottomNavigationBarComponent({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) => onTap(index),
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: StringsProjectDetails.timer,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: StringsProjectDetails.folder,
        ),
      ],
    );
  }
}
