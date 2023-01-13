import 'package:attendance_sync/features/machine_finger/presentation/widget/table_machine_finger.dart';
import 'package:flutter/material.dart';

class MachineFingerPage extends StatelessWidget {
  const MachineFingerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.blue,
        title: const Text('Mesin Finger'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 40, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  icon: const Icon(
                    Icons.add,
                    size: 15,
                  ),
                  label: const Text(
                    'Tambah',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TableMachineFinger(),
          ],
        ),
      ),
    );
  }
}
