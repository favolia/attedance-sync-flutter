import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.blue,
        title: const Text('Pengaturan'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 30),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Download n-hari',
                        style: TextStyle(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DropdownButton(
                        isExpanded: true,
                        onChanged: (value) {},
                        items: const [
                          DropdownMenuItem(
                            value: '30',
                            child: Text(
                              '30',
                            ),
                          ),
                          DropdownMenuItem(
                            value: '30',
                            child: Text('20'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 80,
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Status (Atur semua proses penarikan data dan pengiriman data)',
                        style: TextStyle(fontWeight: FontWeight.w600),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      DropdownButton(
                        isExpanded: true,
                        onChanged: (value) {},
                        items: const [
                          DropdownMenuItem(
                            value: 'Aktif',
                            child: Text(
                              'Aktif',
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Nonaktif',
                            child: Text('Nonaktif'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Idle Hours',
                  style: TextStyle(fontWeight: FontWeight.w600),
                  textAlign: TextAlign.start,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 80,
                      child: Text(
                        '____',
                        style: TextStyle(color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: TextFormField(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Simpan',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
