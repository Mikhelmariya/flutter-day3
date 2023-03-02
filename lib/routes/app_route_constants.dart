import 'package:addimage/pages/page1.dart';
import 'package:addimage/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/page2.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: AppConstants.Page1RouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: Page1());
        },
      ),
      GoRoute(
        path: '/page2',
        name: AppConstants.Page2RouteName,
        pageBuilder: (context, state) {
          return MaterialPage(child: Page2());
        },
      )
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(
          child: MaterialApp(
        home: Scaffold(body: Text("errror!!")),
      ));
    },
  );
}
