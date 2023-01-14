import '../../../../common/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            flex: 1,
            child: AppDrawer(),
          ),
          Expanded(
            flex: 4,
            child: child,
          )
        ],
      ),
    );
  }
}
