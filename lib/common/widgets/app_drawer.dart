import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
            children: [
              ListTile(
                onTap: () => context.go('/home'),
                title: const Text(
                  'Home',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: const Icon(
                  Icons.dashboard,
                  color: Colors.white,
                ),
              ),
              ListTile(
                onTap: () => context.go('/machine-finger'),
                title: const Text(
                  'Mesin Finger',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: const Icon(
                  Icons.fingerprint,
                  color: Colors.white,
                ),
              ),
              ListTile(
                onTap: () => context.go('/work-location'),
                title: const Text(
                  'Lokasi Kerja',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: const Icon(
                  Icons.location_city,
                  color: Colors.white,
                ),
              ),
              ListTile(
                onTap: () => context.go('/employee'),
                title: const Text(
                  'Daftar Karyawan',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: const Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ),
              ListTile(
                onTap: () => context.go('/setting'),
                title: const Text(
                  'Pengaturan',
                  style: TextStyle(
                    color: Color(0xC5FFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                leading: const Icon(
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
