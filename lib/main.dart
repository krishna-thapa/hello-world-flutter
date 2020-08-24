import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:visit_pokhara_flutter/shared/global.dart';
import 'app.dart';

final getIt = GetIt.instance;

main(List<String> args) {
  getIt.registerLazySingleton(() => Global());
  runApp(App());
}
