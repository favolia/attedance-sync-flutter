import 'package:attendance_sync/features/employee/presentation/widget/table_employee.dart';
import 'package:flutter/material.dart';

class EmployeePage extends StatelessWidget {
  const EmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.blue,
        title: const Text('Daftar Karyawan'),
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
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Icon(
                        Icons.download_rounded,
                        size: 15,
                      ),
                      label: const Text(
                        'Download data HRIS',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: DropdownButtonFormField(
                        decoration: const InputDecoration(
                          label: Text('Nama'),
                          filled: true,
                        ),
                        onChanged: (value) {},
                        items: const [
                          DropdownMenuItem(
                            value: 'Nama',
                            child: Text('Nama'),
                          ),
                          DropdownMenuItem(
                            value: 'Nama',
                            child: Text('Nama'),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search_rounded),
                      color: Colors.blue,
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const TableEmployee(),
          ],
        ),
      ),
    );
  }
}
