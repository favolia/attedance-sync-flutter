import 'package:attendance_sync/features/work_location/presentation/widget/table_work_location.dart';
import 'package:flutter/material.dart';

class WorkLocationPage extends StatelessWidget {
  const WorkLocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.blue,
        title: const Text('Lokasi Kerja'),
        backgroundColor: Colors.white,
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
            const TableWorkLocation(),
          ],
        ),
      ),
    );
  }
}
