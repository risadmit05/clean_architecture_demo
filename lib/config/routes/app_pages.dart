import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_ride/config/routes/routes.dart';

class AppPages {
  AppPages._();
  static final routes = [
    GetPage(
      name: Routes.initialRoute,
      page: () => const Center(),
    ),
  ];
}
