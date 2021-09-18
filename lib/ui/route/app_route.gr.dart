// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:study_flutter_architecture/ui/pages/first/first_page.dart'
    as _i4;
import 'package:study_flutter_architecture/ui/pages/home/home_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    FirstRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<FirstRouteArgs>();
          return _i4.FirstPage(key: args.key, argContent: args.argContent);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(FirstRoute.name, path: '/first')
      ];
}

class HomeRoute extends _i1.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class FirstRoute extends _i1.PageRouteInfo<FirstRouteArgs> {
  FirstRoute({_i2.Key? key, required String argContent})
      : super(name,
            path: '/first',
            args: FirstRouteArgs(key: key, argContent: argContent));

  static const String name = 'FirstRoute';
}

class FirstRouteArgs {
  const FirstRouteArgs({this.key, required this.argContent});

  final _i2.Key? key;

  final String argContent;
}
