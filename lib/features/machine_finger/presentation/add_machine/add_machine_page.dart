import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/bs_button.dart';
import '../../../../common/widgets/bs_checkbox.dart';
import '../../../../common/widgets/bs_dialog.dart';
import '../../../../common/widgets/bs_radio.dart';
import '../../../../common/widgets/page_title.dart';
import '../../domain/entity/machine_finger.dart';
import '../../domain/entity/machine_finger_brand.dart';
import '../../domain/entity/worklocation_config.dart';
import '../add_worklocation_config/add_worklocation_config.dart';

class AddMachineFingerPage extends StatefulWidget {
  const AddMachineFingerPage({super.key});

  @override
  State<AddMachineFingerPage> createState() => _AddMachineFingerPageState();
}

class _AddMachineFingerPageState extends State<AddMachineFingerPage> {
  MachineFingerBrand _brand = MachineFingerBrand.solution;
  final TextEditingController _ipAddressFieldController =
      TextEditingController();
  final TextEditingController _databasePathFieldController =
      TextEditingController();
  final TextEditingController _descriptionFieldController =
      TextEditingController();
  final List<WorkLocationConfig> _workLocationConfigs = [];
  bool _enableSync = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PageTitle('Tambah Mesin Finger'),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            elevation: 6,
            shape: const BeveledRectangleBorder(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Brand Mesin Finger',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      BSRadio(
                        value: MachineFingerBrand.solution,
                        groupValue: _brand,
                        onChanged: (value) => setState(
                          () {
                            if (value != null) {
                              _brand = value;
                            }
                          },
                        ),
                        label: const Text(
                          'Solution',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      const SizedBox(width: 8),
                      BSRadio(
                        value: MachineFingerBrand.fingerSpot,
                        groupValue: _brand,
                        onChanged: (value) => setState(
                          () {
                            if (value != null) {
                              _brand = value;
                            }
                          },
                        ),
                        label: const Text(
                          'FingerSpot',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  // FingerSpot
                  _brand != MachineFingerBrand.fingerSpot
                      ? Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Alamat IP',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      const SizedBox(height: 8.0),
                                      TextFormField(
                                        controller: _ipAddressFieldController,
                                        style: const TextStyle(fontSize: 12),
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 8),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                          constraints:
                                              BoxConstraints(maxHeight: 30),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jumlah hari pengecekan mundur (Koneksi Jaringan)',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      const SizedBox(height: 8.0),
                                      TextFormField(
                                        controller: _ipAddressFieldController,
                                        style: const TextStyle(fontSize: 12),
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 8),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                          constraints:
                                              BoxConstraints(maxHeight: 30),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Database Lokal',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      const SizedBox(height: 8.0),
                                      TextFormField(
                                        controller:
                                            _databasePathFieldController,
                                        readOnly: true,
                                        style: const TextStyle(fontSize: 12),
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 8),
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                          constraints: const BoxConstraints(
                                            maxHeight: 30,
                                          ),
                                          suffixIcon: BSButton(
                                            label: const Text('Telusuri'),
                                            icon: const Icon(Icons.folder_open,
                                                size: 14),
                                            onPressed: () async {
                                              FilePickerResult? result =
                                                  await FilePicker.platform
                                                      .pickFiles();

                                              if (result != null) {
                                                File file = File(
                                                    result.files.single.path!);
                                                setState(() {
                                                  _databasePathFieldController
                                                      .text = file.path;
                                                });
                                              } else {
                                                // User canceled the picker
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Jumlah hari pengecekan mundur (Lokal Database)',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      const SizedBox(height: 8.0),
                                      TextFormField(
                                        controller:
                                            _databasePathFieldController,
                                        readOnly: true,
                                        style: const TextStyle(fontSize: 12),
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 8),
                                          border: const OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                          constraints: const BoxConstraints(
                                            maxHeight: 30,
                                          ),
                                          suffixIcon: BSButton(
                                            label: const Text('Telusuri'),
                                            icon: const Icon(Icons.folder_open,
                                                size: 14),
                                            onPressed: () async {
                                              FilePickerResult? result =
                                                  await FilePicker.platform
                                                      .pickFiles();

                                              if (result != null) {
                                                File file = File(
                                                    result.files.single.path!);
                                                setState(() {
                                                  _databasePathFieldController
                                                      .text = file.path;
                                                });
                                              } else {
                                                // User canceled the picker
                                              }
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Username',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        style: const TextStyle(fontSize: 12),
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.all(8),
                                          constraints: BoxConstraints(
                                            maxHeight: 30,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Password',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        style: const TextStyle(fontSize: 12),
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.all(8),
                                          constraints: BoxConstraints(
                                            maxHeight: 30,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Server',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        style: const TextStyle(fontSize: 12),
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.all(8),
                                          constraints: BoxConstraints(
                                            maxHeight: 30,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Port',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        style: const TextStyle(fontSize: 12),
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.all(8),
                                          constraints: BoxConstraints(
                                            maxHeight: 30,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Database Name',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge,
                                      ),
                                      const SizedBox(height: 8),
                                      TextFormField(
                                        style: const TextStyle(fontSize: 12),
                                        decoration: const InputDecoration(
                                          contentPadding: EdgeInsets.all(8),
                                          constraints: BoxConstraints(
                                            maxHeight: 30,
                                          ),
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.zero,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                  const SizedBox(height: 16),
                  Text(
                    'Deskripsi',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _descriptionFieldController,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                    maxLines: 4,
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Konfigurasi Lokasi Kerja',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(height: 8),
                  BSButton(
                    icon: const Icon(Icons.add, size: 14),
                    label: const Text('Tambah Konfigurasi Lokasi Kerja'),
                    onPressed: () async {
                      WorkLocationConfig? workLocationConfig = await showDialog(
                        context: context,
                        builder: (context) => const AddWorkLocationConfig(),
                      );
                      if (workLocationConfig != null) {
                        setState(() {
                          _workLocationConfigs.add(workLocationConfig);
                        });
                      }
                    },
                  ),
                  _workLocationConfigs.isEmpty
                      ? const SizedBox()
                      : Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: ListView.separated(
                            shrinkWrap: true,
                            itemCount: _workLocationConfigs.length,
                            separatorBuilder: (context, index) => const Divider(
                              height: 1,
                            ),
                            itemBuilder: (context, index) => ListTile(
                              contentPadding: const EdgeInsets.only(right: 16),
                              leading: IconButton(
                                splashRadius: 10,
                                color: Colors.red,
                                icon: const Icon(Icons.delete, size: 14),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => BSDialog(
                                      title: const Text(
                                        'Hapus Konfigurasi Lokasi Kerja',
                                      ),
                                      content: Text(
                                        'Anda akan menghapus konfigurasi untuk lokasi kerja ${_workLocationConfigs.elementAt(index).workLocation.name} ?',
                                      ),
                                      actions: [
                                        BSButton(
                                          backgroundColor: Colors.redAccent,
                                          icon: const Icon(
                                            Icons.close,
                                            size: 12,
                                          ),
                                          label: const Text('Batal'),
                                          onPressed: () =>
                                              Navigator.of(context).pop(),
                                        ),
                                        BSButton(
                                          backgroundColor: Colors.green,
                                          icon: const Icon(
                                            Icons.delete,
                                            size: 12,
                                          ),
                                          label: const Text('Ya, Hapus'),
                                          onPressed: () {
                                            setState(() {
                                              _workLocationConfigs
                                                  .removeAt(index);
                                            });
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                              dense: true,
                              title: Text(_workLocationConfigs
                                  .elementAt(index)
                                  .workLocation
                                  .name),
                              subtitle: Text(_workLocationConfigs
                                  .elementAt(index)
                                  .workLocation
                                  .code),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Deteksi Karyawan berdasarkan lokasi kerja ke-n : ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(width: 8),
                                  BSCheckBox(
                                    value: _workLocationConfigs
                                        .elementAt(index)
                                        .includeFirst,
                                    onChanged: (value) {
                                      if (value != null) {
                                        var newWlConfig = _workLocationConfigs
                                            .elementAt(index)
                                            .copyWith(includeFirst: value);
                                        _workLocationConfigs.removeAt(index);
                                        setState(() {
                                          _workLocationConfigs.insert(
                                              index, newWlConfig);
                                        });
                                      }
                                    },
                                    label: const Text(
                                      '1',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  BSCheckBox(
                                    value: _workLocationConfigs
                                        .elementAt(index)
                                        .includeSecond,
                                    onChanged: (value) {
                                      if (value != null) {
                                        var newWlConfig = _workLocationConfigs
                                            .elementAt(index)
                                            .copyWith(includeSecond: value);
                                        _workLocationConfigs.removeAt(index);
                                        setState(() {
                                          _workLocationConfigs.insert(
                                              index, newWlConfig);
                                        });
                                      }
                                    },
                                    label: const Text(
                                      '2',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  BSCheckBox(
                                    value: _workLocationConfigs
                                        .elementAt(index)
                                        .includeThird,
                                    onChanged: (value) {
                                      if (value != null) {
                                        var newWlConfig = _workLocationConfigs
                                            .elementAt(index)
                                            .copyWith(includeThird: value);
                                        _workLocationConfigs.removeAt(index);
                                        setState(() {
                                          _workLocationConfigs.insert(
                                              index, newWlConfig);
                                        });
                                      }
                                    },
                                    label: const Text(
                                      '3',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                  const SizedBox(height: 16),
                  BSCheckBox(
                    value: _enableSync,
                    label: const Text(
                      'Aktifkan Sinkronisasi',
                      style: TextStyle(fontSize: 12),
                    ),
                    onChanged: (value) {
                      if (value != null) {
                        setState(() {
                          _enableSync = value;
                        });
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      BSButton(
                        backgroundColor: Colors.redAccent,
                        icon: const Icon(Icons.close, size: 14),
                        label: const Text('Batal'),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      const SizedBox(width: 16),
                      BSButton(
                        icon: const Icon(Icons.save, size: 14),
                        backgroundColor: Colors.green,
                        label: const Text('Simpan'),
                        onPressed: () {
                          Navigator.of(context)
                              .pop(MachineFinger.createSolution(
                            ipAddress: _ipAddressFieldController.text,
                            databasePath: _databasePathFieldController.text,
                            description: _descriptionFieldController.text,
                            workLocationConfigs: _workLocationConfigs,
                            enableSync: _enableSync,
                          ));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
