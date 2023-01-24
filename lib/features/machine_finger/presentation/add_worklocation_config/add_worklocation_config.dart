import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../common/widgets/bs_button.dart';
import '../../../../common/widgets/bs_checkbox.dart';
import '../../../../common/widgets/bs_dialog.dart';
import '../../../company/domain/entity/company.dart';
import '../../../work_location/domain/entity/worklocation.dart';
import '../../domain/entity/worklocation_config.dart';
import 'add_worklocation_config_provider.dart';

class AddWorkLocationConfig extends StatelessWidget {
  const AddWorkLocationConfig({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AddWorkLocationConfigProvider(),
      child: Consumer<AddWorkLocationConfigProvider>(
        builder: (context, provider, child) => BSDialog(
          title: const Text('Tambah Konfigurasi Lokasi Kerja'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Perusahaan',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<Company>(
                style: const TextStyle(fontSize: 12, color: Colors.black87),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  constraints: BoxConstraints(maxHeight: 30),
                ),
                items: provider.companies
                    .asMap()
                    .entries
                    .map((e) => DropdownMenuItem(
                          value: e.value,
                          child: Text(e.value.name),
                        ))
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    provider.setCompany(value);
                  }
                },
              ),
              const SizedBox(height: 16),
              Text(
                'Lokasi Kerja',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<WorkLocation>(
                style: const TextStyle(fontSize: 12, color: Colors.black87),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                  constraints: BoxConstraints(maxHeight: 30),
                ),
                items: provider.workLocations
                    .asMap()
                    .entries
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.value,
                        child: Text(e.value.name),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value != null) {
                    provider.selectedWorkLocation = value;
                  }
                },
              ),
              const SizedBox(height: 16),
              Text(
                'Deteksi karyawan berdasarkan lokasi kerja ke-n :',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  BSCheckBox(
                    value: provider.includeFirst,
                    onChanged: (value) {
                      if (value != null) {
                        provider.includeFirst = value;
                      }
                    },
                    label: const Text(
                      '1',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(width: 8),
                  BSCheckBox(
                    value: provider.includeSecond,
                    onChanged: (value) {
                      if (value != null) {
                        provider.includeSecond = value;
                      }
                    },
                    label: const Text(
                      '2',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  const SizedBox(width: 8),
                  BSCheckBox(
                    value: provider.includeThird,
                    onChanged: (value) {
                      if (value != null) {
                        provider.includeThird = value;
                      }
                    },
                    label: const Text(
                      '3',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            BSButton(
              icon: const Icon(
                Icons.close,
                size: 12,
              ),
              backgroundColor: Colors.redAccent,
              label: const Text('Batal'),
              onPressed: () => Navigator.of(context).pop(),
            ),
            BSButton(
              icon: const Icon(
                Icons.add,
                size: 12,
              ),
              backgroundColor: Colors.green,
              label: const Text('Simpan'),
              onPressed: () {
                Navigator.of(context).pop(
                  WorkLocationConfig(
                    workLocation: provider.selectedWorkLocation!,
                    includeFirst: provider.includeFirst,
                    includeSecond: provider.includeSecond,
                    includeThird: provider.includeThird,
                  ),
                );
              },
            ),
            // TextButton(
            //   style: TextButton.styleFrom(
            //     foregroundColor: Colors.green,
            //   ),
            //   onPressed: () {
            //     Navigator.of(context).pop(
            //       WorkLocationConfig(
            //         workLocation: provider.selectedWorkLocation!,
            //         includeFirst: provider.includeFirst,
            //         includeSecond: provider.includeSecond,
            //         includeThird: provider.includeThird,
            //       ),
            //     );
            //   },
            //   child: const Text('Simpan'),
            // ),
          ],
        ),
      ),
    );
  }
}
