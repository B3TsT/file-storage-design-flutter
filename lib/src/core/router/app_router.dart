part of '../../app.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _sectionANavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

mixin _AppRouter on State<MyApp> {
  GoRouter myAppRouter() => GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: AppRoutes.root,
        routes: [
          GoRoute(path: '/project-list/notification',
          builder: (context, state) => SizedBox(),
          ),
          GoRoute(path: '/project-list/searh',
           builder: (context, state) => SizedBox()
          ),
          StatefulShellRoute.indexedStack(
            builder: (_, __, StatefulNavigationShell navigationShell) {
              return DashboardComponent(navigationShell: navigationShell);
            },
            branches: <StatefulShellBranch>[
              StatefulShellBranch(
                navigatorKey: _sectionANavigatorKey,
                routes: <RouteBase>[
                  GoRoute(
                    path: AppRoutes.projectList,
                    builder: (BuildContext context, GoRouterState state) =>
                        const TeamFolderPage(),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: <RouteBase>[
                  GoRoute(
                    path: AppRoutes.projectDetails,
                    builder: (BuildContext context, GoRouterState state) =>
                        Container(),
                  ),
                ],
              ),
            ],
          ),
        ],
      );
  // ]);
}
