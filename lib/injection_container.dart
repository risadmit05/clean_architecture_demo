import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trust_ride/core/network/network_checker_controller.dart';
import 'package:trust_ride/core/storage/app_local_storage.dart';

final sl = GetIt.instance;

Future<void> inject() async {
  final pref = await SharedPreferences.getInstance();
  AppLocalStorage.init(pref);
  sl.registerLazySingleton<SharedPreferences>(() => pref);

  //network getx to return new instance
  sl.registerFactory<AppNetWorkStatusChecker>(() => AppNetWorkStatusChecker());
}
