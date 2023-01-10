import 'package:flutter/material.dart';

class TableLog extends StatelessWidget {
  const TableLog({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Karyawan',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'PIN',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Check Time',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Sync Time',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Machine IP',
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
              'Sarah',
              style: TextStyle(fontSize: 12),
            )),
            const DataCell(Text(
              '2415',
              style: TextStyle(fontSize: 12),
            )),
            const DataCell(Text(
              '2023-01-09 10:08:30',
              style: TextStyle(fontSize: 12),
            )),
            const DataCell(Text(
              '-',
              style: TextStyle(fontSize: 12),
            )),
            const DataCell(Text(
              '192.168.23.40',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.refresh),
                  color: Colors.blue,
                )
              ],
            )),
          ],
        ),
      ],
    );
  }
}
