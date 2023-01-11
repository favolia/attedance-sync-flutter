import 'package:flutter/material.dart';

class TableEmployee extends StatelessWidget {
  const TableEmployee({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Nama',
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
              'NIK',
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Perusahaan',
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text(
              'Amal Mulia',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              '32',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              '2016006095',
              style: TextStyle(fontSize: 12),
            )),
            DataCell(Text(
              'Bosowa Corporindo',
              style: TextStyle(fontSize: 12),
            )),
          ],
        ),
      ],
    );
  }
}
