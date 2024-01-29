import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qart_soln_assignment/core/data/network/local/database/model/qart_product.dart';
import 'package:qart_soln_assignment/qart/home/presentation/cubit/home_cubit.dart';
import 'package:qart_soln_assignment/qart/home/presentation/widget/home_widget.dart';
import 'package:qart_soln_assignment/qart/product/presentation/cubit/product_cubit.dart';
import 'package:qart_soln_assignment/qart/product/presentation/widget/product_widget.dart';
import 'package:qart_soln_assignment/qart/splash/presentation/cubit/splash_cubit.dart';
import 'package:qart_soln_assignment/qart/splash/presentation/widget/splash_widget.dart';
import 'package:rxdart/rxdart.dart';

import '../di/app_injection_container.dart';

class MRouter {
  final _currentRouteSubject = BehaviorSubject<String>();

  StreamSink<String> get _currentRouteSink => _currentRouteSubject.sink;

  Stream<String> get currentRouteStream => _currentRouteSubject.stream;

  String get currentRoute => _currentRouteSubject.value;

  void closeStream() => _currentRouteSubject.close();

  final _currentLocalRouteSubject = BehaviorSubject<String>();

  StreamSink<String> get _currentLocalRouteSink =>
      _currentLocalRouteSubject.sink;

  Stream<String> get currentLocalRouteStream =>
      _currentLocalRouteSubject.stream;

  String get currentLocalRoute => _currentLocalRouteSubject.value;

  void closeLocalStream() => _currentLocalRouteSubject.close();

  static bool get mounted => globalNavigatorKey.currentState != null;

  static final GlobalKey<NavigatorState> globalNavigatorKey =
  GlobalKey(debugLabel: 'Global Navigator');

  static const String splashRoute = 'SplashWidget';
  static const String homeWidget = 'HomeWidget';
  static const String productWidget = 'ProductWidget';

  void updateRoute(String? routeName) => _currentRouteSink.add(routeName ?? "");

  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return CupertinoPageRoute(
            builder: (ctx) =>
                BlocProvider(
                    create: (context) => SplashCubit(),
                    child: const SplashWidget()),
            settings: settings);
      case homeWidget:
        return CupertinoPageRoute(
            builder: (ctx) =>
                BlocProvider(
                    create: (context) => HomeCubit(sl()),
                    child:  HomeWidget()),
            settings: settings);
      case productWidget:
        Products argument = settings.arguments as Products;
        return CupertinoPageRoute(
            builder: (ctx) =>
                BlocProvider(
                    create: (context) => ProductCubit(),
                    child: ProductWidget(argument)),
            settings: settings);
    }
  }

  static Future<dynamic> pushNamed(String route,
      {Object? arguments, bool isLocal = false}) {
      return globalNavigatorKey.currentState!
          .pushNamed(route, arguments: arguments);
  }

  static Future<dynamic> pushReplacementNamed(String route,
      {Object? arguments, bool isLocal = false}) {
      return globalNavigatorKey.currentState!
          .pushReplacementNamed(route, arguments: arguments);

  }

  static Future<dynamic> pushNamedAndRemoveUntil(String route,
      {Object? arguments, bool isLocal = false}) {
      return globalNavigatorKey.currentState!.pushNamedAndRemoveUntil(
          route, (Route<dynamic> route) => false,
          arguments: arguments);
  }

  static Future<Map?> pushNamedWithResult(
      BuildContext context, Widget widget, String? routeName,
      {bool isLocal = false}) async {
    var localSettings = RouteSettings(name: routeName, arguments: {});

      Object? value = await globalNavigatorKey.currentState!.push(
          CupertinoPageRoute(
              builder: (ctx) => widget, settings: localSettings));
    final arguments = ModalRoute.of(context)?.settings.arguments as Map?;
    return arguments;
  }

  static Future<bool?> popNamedWithResult(
      String? routeName, String key, dynamic value) async {
    globalNavigatorKey.currentState?.popUntil((route) {
      if (route.settings.name == routeName) {
        (route.settings.arguments as Map)[key] = value;
        return true;
      } else {
        return false;
      }
    });
  }

  static pop(Object? result, {bool isLocal = false}) {
      return globalNavigatorKey.currentState!.pop(result);
  }

  static void popUntil(String untilRoute, {bool isLocal = false}) {
      return globalNavigatorKey.currentState!
          .popUntil(ModalRoute.withName(untilRoute));
  }
}