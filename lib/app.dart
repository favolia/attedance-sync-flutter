import 'package:flutter/material.dart';

import 'router.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'attendance sync',
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
