import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget implements PreferredSizeWidget {
  const PageTitle(this.text, {super.key})
      : preferredSize = const Size.fromHeight(kToolbarHeight);

  final String text;

  @override
  final Size preferredSize;

  @override
  PreferredSizeWidget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: false,
      titleTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Colors.black54,
          ),
      foregroundColor: Colors.black54,
      title: Text(text),
      backgroundColor: Colors.transparent,
    );
  }
}
