import 'package:attendance_sync/common/widgets/bs_button.dart';
import 'package:attendance_sync/common/widgets/page_title.dart';
import 'package:go_router/go_router.dart';

import 'widget/table_machine_finger.dart';
import 'package:flutter/material.dart';

class MachineFingerPage extends StatelessWidget {
  const MachineFingerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle('Mesin Finger'),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Aksi terpilih',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 200,
                  child: DropdownButtonFormField<int>(
                    value: null,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      constraints: BoxConstraints(maxHeight: 30),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    items: const [
                      DropdownMenuItem(
                        value: null,
                        child: Text('-- Pilih --'),
                      ),
                      DropdownMenuItem(
                        value: 0,
                        child: Text('Aktifkan Sinkronisasi'),
                      ),
                      DropdownMenuItem(
                        value: 1,
                        child: Text('Nonaktifkan Sinkronisasi'),
                      ),
                      DropdownMenuItem(
                        value: 2,
                        child: Text('Hapus'),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ),
                BSButton(
                  label: const Text('Terapkan'),
                  onPressed: () {},
                ),
                const SizedBox(width: 16),
                BSButton(
                  backgroundColor: Colors.green,
                  icon: const Icon(
                    Icons.add,
                    size: 12,
                  ),
                  label: const Text('Tambah Mesin Finger'),
                  onPressed: () {
                    GoRouter.of(context)
                        .go('/machine-finger/add/:addMachineFingerPage');
                  },
                ),
              ],
            ),
            const TableMachineFinger(),
          ],
        ),
      ),
    );
  }
}
