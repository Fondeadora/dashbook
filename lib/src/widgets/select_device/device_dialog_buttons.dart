import 'package:flutter/material.dart';

class DeviceDialogButtons extends StatelessWidget {
  const DeviceDialogButtons({
    Key? key,
    required this.onSelect,
    required this.onClear,
    required this.onCancel,
  }) : super(key: key);
  final VoidCallback onSelect;
  final VoidCallback onClear;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    // Wrap, not Row: three fixed buttons overflow a narrow dialog.
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 12,
      runSpacing: 8,
      children: [
        ElevatedButton(
          onPressed: onSelect,
          child: const Text('Select'),
        ),
        ElevatedButton(
          onPressed: onCancel,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: onClear,
          child: const Text('Clear'),
        ),
      ],
    );
  }
}
