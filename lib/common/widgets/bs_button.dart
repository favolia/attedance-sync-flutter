import 'package:flutter/material.dart';

class BSButton extends StatelessWidget {
  const BSButton({
    required this.label,
    this.icon,
    this.backgroundColor = Colors.blue,
    required this.onPressed,
    super.key,
  });

  final Widget label;
  final Widget? icon;
  final Color backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: const BeveledRectangleBorder(),
          textStyle: const TextStyle(fontSize: 12),
          padding: const EdgeInsets.all(16),
          shadowColor: backgroundColor,
        ),
        onPressed: onPressed,
        icon: icon!,
        label: label,
      );
    } else {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          elevation: 0,
          shape: const BeveledRectangleBorder(),
          textStyle: const TextStyle(fontSize: 12),
          padding: const EdgeInsets.all(16),
          shadowColor: backgroundColor,
        ),
        onPressed: onPressed,
        child: label,
      );
    }
  }
}
