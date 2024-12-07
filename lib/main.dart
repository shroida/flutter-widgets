import 'package:flutter/material.dart';
import 'package:flutter_widgets/App%20Router/app_router.dart';
import 'package:flutter_widgets/widgets-container/widgets_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: AppRouter.router, // Attach GoRouter here
        debugShowCheckedModeBanner: false,
       );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WidgetsContainer(),
    );
  }
}
