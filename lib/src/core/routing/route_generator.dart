import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../go_router_navigation_observer.dart';
import '../../features/main/presentation/screens/main_screen.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/custom_transition_page_widget.dart';
import '../configs/route_config.dart';
import '../states/states.dart';

class RouteGenerator {
  static final GoRouter goRouter = GoRouter(
    // initialLocation: RouteConfig.homeScreenRoute,
    initialLocation: RouteConfig.splashScreenRoute,
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
              onPressed: () => goRouter.go(RouteConfig.splashScreenRoute),
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
                name: RouteConfigName.homeScreenRouteName,
                path: RouteConfig.homeScreenRoute,
                pageBuilder: (context, state) {
                  sl
                      .get<RouteHistoryCubit>()
                      .changePreviousRouteName(state.name ?? "");
                  return customTransitionPageWidget(
                    state,
                    widgetChild: const HomeScreen(),
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
                name: RouteConfigName.ordersScreenRouteName,
                path: RouteConfig.ordersScreenRoute,
                pageBuilder: (context, state) {
                  sl
                      .get<RouteHistoryCubit>()
                      .changePreviousRouteName(state.name ?? "");
                  return customTransitionPageWidget(
                    state,
                    widgetChild: const OrdersScreen(),
                    // begin: Offset(
                    //     sl.get<RouteHistoryCubit>().previousRouteName[0] ==
                    //             RouteConfigName.homeScreenRouteName
                    //         ? 1
                    //         : -1,
                    //     0),
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
                name: RouteConfigName.ledgerScreenRouteName,
                path: RouteConfig.ledgerScreenRoute,
                pageBuilder: (context, state) {
                  sl
                      .get<RouteHistoryCubit>()
                      .changePreviousRouteName(state.name ?? "");
                  return customTransitionPageWidget(
                    state,
                    widgetChild: const LedgerScreen(),
                    begin: Offset(
                        sl.get<RouteHistoryCubit>().previousRouteName[0] ==
                                RouteConfigName.profileScreenRouteName
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
                name: RouteConfigName.profileScreenRouteName,
                path: RouteConfig.profileScreenRoute,
                pageBuilder: (context, state) {
                  sl
                      .get<RouteHistoryCubit>()
                      .changePreviousRouteName(state.name ?? "");
                  return customTransitionPageWidget(
                    state,
                    widgetChild: const ProfileScreen(),
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
