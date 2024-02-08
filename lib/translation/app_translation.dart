//AppTranslation.dart
import 'package:trust_ride/translation/bn.dart';
import 'package:trust_ride/translation/en.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys = {
    "en_US": enUS,
    "bn": bn
   
  };
}
