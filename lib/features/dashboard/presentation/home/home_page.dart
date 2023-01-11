import 'package:attendance_sync/features/dashboard/presentation/home/widgets/table_log.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.blue,
        title: const Text('Home'),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 40, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.refresh),
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      icon: const Icon(
                        Icons.account_tree_rounded,
                        size: 15,
                      ),
                      label: const Text(
                        'Check Data Server',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                      icon: const Icon(
                        Icons.warning_amber,
                        size: 15,
                      ),
                      label: const Text(
                        'Hapus Data Log',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Total data yang belum ter-syncron 203',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    Text(
                      'Total data terkirim 2760',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TableLog(),
          ],
        ),
      ),
    );
  }
}
