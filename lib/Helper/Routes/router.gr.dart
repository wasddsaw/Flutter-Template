// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../Class/AppRoot/app_root.dart' as _i3;
import '../../Class/Home/home.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AppRoot.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.AppRoot();
        }),
    Home.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.Home();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AppRoot.name, path: '/'),
        _i1.RouteConfig(Home.name, path: '/Home')
      ];
}

class AppRoot extends _i1.PageRouteInfo {
  const AppRoot() : super(name, path: '/');

  static const String name = 'AppRoot';
}

class Home extends _i1.PageRouteInfo {
  const Home() : super(name, path: '/Home');

  static const String name = 'Home';
}
