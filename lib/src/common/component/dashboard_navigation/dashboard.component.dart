import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common.dart';
import 'dashboard_navigation.controller.dart';

class DashboardComponent extends StatelessWidget {
  const DashboardComponent({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      floatingActionButton: const FloatingActionButtonComponent(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBarComponent(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => DashboardNavigationController.handleNavigationTap(
            context, navigationShell, index),
      ),
    );
  }
}
