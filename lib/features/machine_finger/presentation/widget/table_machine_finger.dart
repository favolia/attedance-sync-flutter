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
              'IP',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Lokasi',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Status Sinkron',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              '',
            ),
          ),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            const DataCell(Text(
              '192.168.23.40',
              style: TextStyle(fontSize: 12),
            )),
            const DataCell(Text(
              'De',
              style: TextStyle(fontSize: 12),
            )),
            const DataCell(Text(
              'Aktif',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.edit),
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  IconButton(
                    onPressed: () {},
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
