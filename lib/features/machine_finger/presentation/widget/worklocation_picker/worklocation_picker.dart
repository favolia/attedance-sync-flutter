import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../company/domain/entity/company.dart';
import '../../../../work_location/domain/entity/worklocation.dart';
import 'worklocation_picker_provider.dart';

class WorkLocationPicker extends StatelessWidget {
  const WorkLocationPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkLocationPickerProvider(),
      child: Consumer<WorkLocationPickerProvider>(
        builder: (context, worklocationPickerProvider, child) => AlertDialog(
          title: const Text('Tambah Lokasi Kerja'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              DropdownButtonFormField<Company>(
                decoration: const InputDecoration(
                  labelText: 'Pilih Perusahaan',
                ),
                onChanged: (value) {
                  if (value != null) {
                    worklocationPickerProvider.setCompany(value);
                  }
                },
                items: worklocationPickerProvider.companies
                    .asMap()
                    .entries
                    .map((e) => DropdownMenuItem(
                          value: e.value,
                          child: Text(e.value.name),
                        ))
                    .toList(),
              ),
              const SizedBox(height: 30),
              DropdownButtonFormField<WorkLocation>(
                decoration: const InputDecoration(
                  labelText: 'Pilih Lokasi Kerja',
                ),
                onChanged: (value) {
                  if (value != null) {
                    worklocationPickerProvider.selectedWorkLocation = value;
                  }
                },
                value: worklocationPickerProvider.selectedWorkLocation,
                items: worklocationPickerProvider.worklocations
                    .asMap()
                    .entries
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.value,
                        child: Text(e.value.name),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
          actions: [
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
              ),
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(
                worklocationPickerProvider.selectedWorkLocation,
              ),
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
