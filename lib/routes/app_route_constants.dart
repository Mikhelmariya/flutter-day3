import 'package:addimage/pages/page1.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/page2.dart';

class AppRouter {
  GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      name: 'page1',
      pageBuilder: (context, state) {
        return MaterialPage(child: Page1());
      },
    ),
    GoRoute(
      path: '/page2',
      name: 'page2',
      pageBuilder: (context, state) {
        return MaterialPage(child: Page2());
      },
    )
  ]);
}
