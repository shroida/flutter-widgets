import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const firstCard = '/firstCard';
  final router = GoRouter(routes: [
    GoRoute(path: firstCard,builder: (context, state) => const FirstCard(),)

  ]);
}