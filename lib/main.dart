import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trust_ride/app/app.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  await di.inject(); //All Dependent Class

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]); // lock orientation
  runApp(const App());
}
