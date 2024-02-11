import 'package:flutter/widgets.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AppNavigatorObserver extends GetObserver {
  static const _enableLog = true;

  AppNavigatorObserver();

  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    if (_enableLog) {}
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    if (_enableLog) {}
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    if (_enableLog) {}
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (_enableLog) {}
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    super.didStartUserGesture(route, previousRoute);
    if (_enableLog) {}
  }

  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
    if (_enableLog) {}
  }
}
