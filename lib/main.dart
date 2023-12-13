import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_ex/routes.dart';

void main() {
GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = Routes();
    return MaterialApp.router(
     debugShowCheckedModeBanner: false,
    //  theme: ThemeData(
    //   pageTransitionsTheme: const PageTransitionsTheme(builders:{
    //     TargetPlatform.android:CupertinoPageTransitionsBuilder(),
    //     TargetPlatform.iOS:CupertinoPageTransitionsBuilder(),
    //   }),  ),
     routeInformationParser:router.router.routeInformationParser,
      routeInformationProvider: router.router.routeInformationProvider,
     routerDelegate: router.router.routerDelegate,
    );
  }
}

