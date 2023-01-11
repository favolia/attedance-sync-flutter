import 'package:attendance_sync/features/dashboard/presentation/home/dashboard.dart';
import 'package:attendance_sync/features/dashboard/presentation/home/home_page.dart';
import 'package:attendance_sync/features/employee/presentation/employee_page.dart';
import 'package:attendance_sync/features/machine_finger/presentation/machine_finger_page.dart';
import 'package:attendance_sync/features/setting/presentation/setting_page.dart';
import 'package:attendance_sync/features/work_location/presentation/edit_work_location_page.dart';
import 'package:attendance_sync/features/work_location/presentation/work_location_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
      builder: (context, state, child) => Dashboard(
        child: child,
      ),
      routes: [
        GoRoute(
          path: '/home',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          path: '/machine-finger',
          builder: (context, state) => const MachineFingerPage(),
        ),
        GoRoute(
          path: '/work-location',
          builder: (context, state) => const WorkLocationPage(),
          routes: [
            // GoRoute(
            //   name: 'addWorkLocation',
            //   path: '/add',
            //   builder: (context, state) => const AddWorkLoactionPage(),
            // ),
            GoRoute(
              name: 'editWorkLocation',
              path: 'edit/:workLocationId',
              builder: (context, state) => EditWorkLocationPage(
                id: state.params['workLocationId'].toString(),
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/employee',
          builder: (context, state) => const EmployeePage(),
        ),
        GoRoute(
          path: '/setting',
          builder: (context, state) => const SettingPage(),
        ),
      ],
    ),
  ],
);
