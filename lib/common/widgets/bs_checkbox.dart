import 'package:flutter/material.dart';

class BSCheckBox extends StatelessWidget {
  const BSCheckBox({
    this.value = false,
    required this.onChanged,
    this.label,
    super.key,
  });

  final bool value;
  final void Function(bool?) onChanged;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.scale(
          scale: 0.8,
          child: Checkbox(
            activeColor: Colors.green,
            value: value,
            onChanged: onChanged,
          ),
        ),
        label != null
            ? GestureDetector(
                onTap: () {
                  onChanged(!value);
                },
                child: label,
              )
            : const SizedBox()
      ],
    );
  }
}
