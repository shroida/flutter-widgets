import 'package:flutter_widgets/First%20card%20widgets/first_card_widgets.dart';
import 'package:flutter_widgets/First%20card%20widgets/widgets/smooth_list_items.dart';
import 'package:flutter_widgets/main.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomePage = '/';
  static const firstCard = '/firstCard';
  static const smoothList = '/smoothList';
  static final router = GoRouter(routes: [
    GoRoute(
      path: firstCard,
      builder: (context, state) => const FirstCardWidgets(),
    ),
    GoRoute(
      path: kHomePage,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: smoothList,
      builder: (context, state) => const SmoothListItems(),
    ),
  ]);
}
