import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/src/common/common.dart';

import 'core/core.dart';
import 'features/project_details/presentation/page/team_folder_details.page.dart';
import 'features/projects_list/projects_list.dart';


part 'core/router/app_router.dart';
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with _AppRouter {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.getTheme(),
      routerConfig: myAppRouter(),
    );
  }
}
