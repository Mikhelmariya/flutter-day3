import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../routes/app_route.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Center(child: Text("PAGE 1")),
            ElevatedButton(
                onPressed: (() {
                  GoRouter.of(context).pushNamed(AppConstants.Page2RouteName);
                }),
                child: Text("Go to page 2"))
          ],
        ),
      ),
    );
  }
}
