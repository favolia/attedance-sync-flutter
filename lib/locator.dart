import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

GetIt locator = GetIt.I();

Future<void> setupLocator() async {
  await Hive.initFlutter();
}
