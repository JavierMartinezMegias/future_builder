import 'package:future_builder/presentation/screens/loading_page.dart';
import 'package:future_builder/presentation/screens/screen1.dart';
import 'package:go_router/go_router.dart';


final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/screen1',
      name: 'login',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login_sreen',
      name: 'home',
      builder: (context, state) => const LoadingScreen(),
    ),
  ],
);