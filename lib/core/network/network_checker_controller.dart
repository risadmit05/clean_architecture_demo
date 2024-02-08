import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:trust_ride/core/network/no_network_page.dart';

class AppNetWorkStatusChecker extends GetxController {
  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  var isNetworkAvl = false.obs;

  updateConnectionStatus() {
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.none) {
        Get.dialog(const NoInterNetWidget());
      } else {
        isNetworkAvl.value = true;
        bool? isDialogOpen = Get.isDialogOpen;
        if (isDialogOpen == true) {
          Get.back();
        }
      }
    });
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }
}
