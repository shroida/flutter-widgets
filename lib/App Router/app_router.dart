import 'package:flutter_widgets/First%20card%20widgets/first_card_widgets.dart';
import 'package:flutter_widgets/main.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const firstCard = '/firstCard';
  static const kHomePage = '/';
  static final router = GoRouter(routes: [
    GoRoute(
      path: firstCard,
      builder: (context, state) => const FirstCardWidgets(),
    ),
    GoRoute(
      path: kHomePage,
      builder: (context, state) => const HomePage(),
    )
  ]);
}
