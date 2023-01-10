import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Attendance Sync',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          Column(
            children: const [
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  'Mesin Finger',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(
                  Icons.fingerprint,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  'Lokasi Kerja',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(
                  Icons.location_city,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  'Daftar Karyawan',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ),
              ListTile(
                title: Text(
                  'Pengaturan',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              child: const Text(
                'Sign Out',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
