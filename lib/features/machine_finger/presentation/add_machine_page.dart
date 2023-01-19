import 'package:flutter/material.dart';

import '../../work_location/domain/entity/worklocation.dart';
import 'widget/worklocation_picker/worklocation_picker.dart';

class AddMachineFingerPage extends StatefulWidget {
  const AddMachineFingerPage({super.key});

  @override
  State<AddMachineFingerPage> createState() => _AddMachineFingerPageState();
}

class _AddMachineFingerPageState extends State<AddMachineFingerPage> {
  late ScrollController _scrollController;

  List<WorkLocation> worklocations = [];

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add Machine Finger',
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'IP Address',
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Database Path'),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () async {
                    WorkLocation? workLocation = await showDialog(
                      context: context,
                      builder: (context) => const WorkLocationPicker(),
                    );
                    if (workLocation != null) {
                      setState(() {
                        worklocations.add(workLocation);
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.all(15),
                  ),
                  icon: const Icon(
                    Icons.add,
                    size: 15,
                  ),
                  label: const Text('Tambah Lokasi Kerja'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Flexible(
              fit: FlexFit.tight,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Scrollbar(
                  controller: _scrollController,
                  thumbVisibility: true,
                  child: ListView.separated(
                    controller: _scrollController,
                    itemCount: worklocations.length,
                    itemBuilder: (context, index) => ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(worklocations.elementAt(index).name),
                      subtitle:
                          Text(worklocations.elementAt(index).company.name),
                      leading: IconButton(
                        splashRadius: 15,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Hapus Lokasi Kerja'),
                              content:
                                  Text(worklocations.elementAt(index).name),
                              actions: [
                                TextButton(
                                  style: TextButton.styleFrom(
                                      foregroundColor: Colors.red),
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: const Text('Batal'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      worklocations.removeAt(index);
                                    });
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Hapus'),
                                ),
                              ],
                            ),
                          );
                        },
                        icon: const Icon(
                          Icons.remove,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    separatorBuilder: (context, index) => const Divider(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            CheckboxListTile(
              contentPadding: EdgeInsets.zero,
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text('Enable Download'),
              value: false,
              onChanged: (value) {},
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(15),
              ),
              onPressed: () {},
              child: const Text('Simpan'),
            )
          ],
        ),
      ),
    );
  }
}
