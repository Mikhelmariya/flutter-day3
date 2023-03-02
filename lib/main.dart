import 'package:addimage/routes/app_route_constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PageNavigation());
}

//stlss
class PageNavigation extends StatelessWidget {
  const PageNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    //For using GoRoute we return MaterialApp.router()
    return MaterialApp.router(
      // to remove debug symbol
      debugShowCheckedModeBanner: false,
      routeInformationParser: AppRouter().router.routeInformationParser,
      routerDelegate: AppRouter().router.routerDelegate,
    );
  }
}
