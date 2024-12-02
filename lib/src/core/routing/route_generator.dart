import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:townsquare/src/features/activities/presentation/screens/activities_screen.dart';
import 'package:townsquare/src/features/communities/presentation/screens/communities_screen.dart';
import 'package:townsquare/src/features/locations/presentation/screens/locations_screen.dart';
import 'package:townsquare/src/features/services/presentation/screens/services_screen.dart';

import '../../../di_injection.dart';
import '../../../go_router_navigation_observer.dart';
import '../../features/main/presentation/cubit/route_history_cubit.dart';
import '../../features/main/presentation/screens/main_screen.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_transition_page_widget.dart';
import '../configs/route_config.dart';
import '../states/states.dart';

class RouteGenerator {
  static final GoRouter goRouter = GoRouter(
    initialLocation: RouteConfig.activitiesScreenRoute,
    navigatorKey: rootNavigatorKey,
    observers: [
      GoRouterObserver(),
    ],
    debugLogDiagnostics: true,
    errorBuilder: (_, GoRouterState state) => Scaffold(
      appBar: AppBar(
        title: const Text('Page not found'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomText.ourText(
              '${state.uri} does not exist',
            ),
            ElevatedButton(
              onPressed: () => goRouter.go(RouteConfig.activitiesScreenRoute),
              child: CustomText.ourText('Go to main'),
            ),
          ],
        ),
      ),
    ),
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainScreen(statefulNavigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                name: RouteConfigName.activitiesScreenRouteName,
                path: RouteConfig.activitiesScreenRoute,
                pageBuilder: (context, state) {
                  sl
                      .get<RouteHistoryCubit>()
                      .changePreviousRouteName(state.name ?? "");
                  return customTransitionPageWidget(
                    state,
                    widgetChild: const ActivitiesScreen(),
                    begin: const Offset(-2, 0),
                    end: const Offset(0, 0),
                  );
                },
                onExit: (context, state) {
                  return true;
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                name: RouteConfigName.locationsScreenRouteName,
                path: RouteConfig.locationsScreenRoute,
                pageBuilder: (context, state) {
                  sl
                      .get<RouteHistoryCubit>()
                      .changePreviousRouteName(state.name ?? "");
                  return customTransitionPageWidget(
                    state,
                    widgetChild: const LocationsScreen(),
                    begin: const Offset(-2, 0),
                    end: const Offset(0, 0),
                  );
                },
                onExit: (context, state) {
                  return true;
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                name: RouteConfigName.communitiesScreenRouteName,
                path: RouteConfig.communitiesScreenRoute,
                pageBuilder: (context, state) {
                  sl
                      .get<RouteHistoryCubit>()
                      .changePreviousRouteName(state.name ?? "");
                  return customTransitionPageWidget(
                    state,
                    widgetChild: const CommunitiesScreen(),
                    begin: Offset(
                        sl.get<RouteHistoryCubit>().previousRouteName[0] ==
                                RouteConfigName.servicesScreenRouteName
                            ? -1
                            : 1,
                        0),
                    end: const Offset(0, 0),
                  );
                },
                onExit: (context, state) {
                  return true;
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                name: RouteConfigName.servicesScreenRouteName,
                path: RouteConfig.servicesScreenRoute,
                pageBuilder: (context, state) {
                  sl
                      .get<RouteHistoryCubit>()
                      .changePreviousRouteName(state.name ?? "");
                  return customTransitionPageWidget(
                    state,
                    widgetChild: const ServicesScreen(),
                    begin: const Offset(1, 0),
                    end: const Offset(0, 0),
                  );
                },
                onExit: (context, state) {
                  return true;
                },
              ),
            ],
          ),
        ],
      ),
      // GoRoute(
      //   name: RouteConfigName.splashScreenRouteName,
      //   path: RouteConfig.splashScreenRoute,
      //   pageBuilder: (context, state) {
      //     return customTransitionPageWidget(
      //       state,
      //       widgetChild: const SplashScreen(),
      //     );
      //   },
      // ),
    ],
  );
}
