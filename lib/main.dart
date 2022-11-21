import 'package:flutter/material.dart';
import 'package:flutter_navigation_signin/pages/home_screen.dart';
import 'package:go_router/go_router.dart';

import 'pages/signed_in.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => HomeScreen(),
  ),
  GoRoute(
    path: '/signed_in',
    builder: (context, state) => SignedIn(username: state.extra as String),
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router,
    );
  }
}
