import 'package:attendance_sync/dashboard.dart';
import 'package:flutter/material.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'attendance sync',
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
