import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TableWorkLocation extends StatelessWidget {
  const TableWorkLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Perusahaan',
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Lokasi Kerja',
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Deteksi WL1',
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Deteksi WL2',
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Deteksi WL3',
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 11,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Token',
              overflow: TextOverflow.clip,
              style: TextStyle(
                fontSize: 11,
              ),
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
              'Bosowa Corporindo',
              style: TextStyle(fontSize: 9.8),
            )),
            const DataCell(Text(
              'Makassar - Menara Bosowa [BI-MKS]',
              style: TextStyle(fontSize: 9.8),
            )),
            const DataCell(Text(
              'Aktif',
              style: TextStyle(fontSize: 9.8),
            )),
            const DataCell(Text(
              'Nonaktif',
              style: TextStyle(fontSize: 9.8),
            )),
            const DataCell(Text(
              'Nonaktif',
              style: TextStyle(fontSize: 9.8),
            )),
            const DataCell(Text(
              'FD752A7C*****',
              style: TextStyle(fontSize: 9.8),
            )),
            DataCell(
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      GoRouter.of(context)
                          .go('/work-location/edit/:workLocationId');
                    },
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
