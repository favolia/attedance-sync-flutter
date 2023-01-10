import 'package:attendance_sync/home/home_page.dart';
import 'package:attendance_sync/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Expanded(
            flex: 1,
            child: AppDrawer(),
          ),
          Expanded(
            flex: 4,
            child: HomePage(),
          )
        ],
      ),
    );
  }
}
