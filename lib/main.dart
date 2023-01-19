import 'package:flutter/material.dart';

import 'app.dart';
import 'locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator();

  runApp(const Apps());
}
