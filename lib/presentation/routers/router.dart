part of 'router_import.dart';

@AutoRouterConfig(replaceInRouteName: 'Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, path: '/', initial: true),
    AutoRoute(page: OnboardRoute.page),
    AutoRoute(page: AuthRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: GeneralRoute.page),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: HomeDetailsRoute.page),
  ];
}
