import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DashboardNavigationController {
  static void handleNavigationTap(BuildContext context, StatefulNavigationShell navigationShell, int index) {
     navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
