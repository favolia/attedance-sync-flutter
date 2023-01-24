import 'package:flutter/material.dart';

class BSRadio<T> extends StatelessWidget {
  const BSRadio({
    required this.value,
    this.groupValue,
    this.onChanged,
    this.label,
    super.key,
  });

  final T value;
  final T? groupValue;
  final void Function(T?)? onChanged;
  final Widget? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Transform.scale(
          scale: 0.8,
          child: Radio<T>(
            activeColor: Colors.green,
            splashRadius: 10,
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
        ),
        label != null
            ? GestureDetector(
                onTap: () {
                  onChanged!(value);
                },
                child: label,
              )
            : const SizedBox(),
      ],
    );
  }
}
