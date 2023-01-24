import 'package:flutter/material.dart';

class TableMachineFinger extends StatelessWidget {
  const TableMachineFinger({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Deskripsi',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'IP',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Database Lokal',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Lokasi Kerja',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Status Sinkronisasi',
            ),
          ),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          selected: false,
          onSelectChanged: (value) {},
          cells: <DataCell>[
            const DataCell(
              Text(
                'Menara Karya - Jakarta',
                style: TextStyle(fontSize: 12),
              ),
            ),
            const DataCell(Text(
              '192.168.1.1',
              style: TextStyle(fontSize: 12),
            )),
            const DataCell(Text(
              'C:/att.mdb',
              style: TextStyle(fontSize: 12),
            )),
            const DataCell(Text(
              'C:/att.mdb',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              Row(
                children: [
                  Transform.scale(
                    scale: 0.8,
                    child: Switch(
                      splashRadius: 10,
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    splashRadius: 15,
                    icon: const Icon(Icons.edit),
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
                    splashRadius: 15,
                    icon: const Icon(Icons.delete_forever),
                    color: Colors.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
