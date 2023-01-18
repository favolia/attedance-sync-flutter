import 'package:flutter/material.dart';

class EditWorkLocationPage extends StatelessWidget {
  const EditWorkLocationPage({super.key, required this.id});
  final String id;
  final bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Lokasi Kerja',
          style: TextStyle(color: Colors.blue),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Perusahaan',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            TextFormField(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Lokasi Kerja',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            TextFormField(),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Token',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            TextFormField(),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Deteksi WL1',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text('Aktif'),
                        value: check,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Deteksi WL2',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text('Aktif'),
                        value: check,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Deteksi WL3',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        title: const Text('Aktif'),
                        value: check,
                        onChanged: (value) {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Text('Simpan'),
                ))
          ],
        ),
      ),
    );
  }
}
