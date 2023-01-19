import 'dart:io';

import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'features/company/application/company_service.dart';
import 'features/work_location/application/worklocation_service.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  Directory appDocDir = await getApplicationDocumentsDirectory();
  String appDocPath = '${appDocDir.path}\\ATTSYNC';
  await Hive.initFlutter(appDocPath);

  locator.registerSingletonAsync(() => CompanyService.initService());
  locator.registerSingletonAsync(() => WorkLocationService.initService());

  await locator.allReady();
}
