import 'package:attendance_sync/features/machine_finger/domain/entity/machine_finger_brand.dart';
import 'package:attendance_sync/features/machine_finger/domain/entity/worklocation_config.dart';

import 'machine_finger.dart';

class Solution implements MachineFinger {
  final String ipAddress;
  final String dbPath;
  final String _description;
  final List<WorkLocationConfig> _workLocationConfigs;
  final bool _enableSync;

  @override
  String get description => _description;
  @override
  MachineFingerBrand get brand => MachineFingerBrand.solution;
  @override
  List<WorkLocationConfig> get workLocationConfigs => _workLocationConfigs;
  @override
  bool get enableSync => _enableSync;

  Solution({
    required this.ipAddress,
    required this.dbPath,
    String description = '',
    List<WorkLocationConfig> workLocationConfigs = const [],
    bool enableSync = true,
  })  : _description = description,
        _workLocationConfigs = workLocationConfigs,
        _enableSync = enableSync;

  @override
  Future<void> downloadFromLocalDB() {
    throw UnimplementedError();
  }

  Future<void> downloadFromNetwork() {
    throw UnimplementedError();
  }
}
