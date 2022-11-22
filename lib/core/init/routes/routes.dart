import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../view/home/home_view.dart';
import '../../base/functions/base_functions.dart';
import '../../constants/enums/navigation_enums.dart';

final GlobalKey<NavigatorState> mainNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'main');

class Routes {
  static Routes? _instance;
  static Routes get instance {
    _instance ??= Routes._init();
    return _instance!;
  }

  Routes._init();

  GoRouter routes = GoRouter(
    initialLocation: NavigationEnums.home.routeName,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: NavigationEnums.home.routeName,
        pageBuilder: (context, state) {
          return animatedRouting(
            state: state,
            route: const HomeView(),
          );
        },
      ),
    ],
  );
}
