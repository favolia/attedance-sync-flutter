import 'package:flutter/material.dart';

class BSDialog extends StatelessWidget {
  const BSDialog({
    this.title,
    this.content,
    this.actions,
    super.key,
  });

  final Widget? title;
  final Widget? content;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentTextStyle: const TextStyle(
        fontSize: 12,
        color: Colors.black54,
      ),
      titleTextStyle: Theme.of(context).textTheme.titleMedium,
      contentPadding: const EdgeInsets.all(16),
      titlePadding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      shape: const BeveledRectangleBorder(),
      title: title,
      content: content,
      actions: actions,
    );
  }
}
