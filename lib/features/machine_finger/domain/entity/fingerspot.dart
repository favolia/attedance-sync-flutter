import 'machine_finger.dart';
import 'machine_finger_brand.dart';
import 'worklocation_config.dart';

class FingerSpot implements MachineFinger {
  final String username;
  final String password;
  final String server;
  final String databaseName;
  final int port;
  final MachineFingerBrand _brand = MachineFingerBrand.fingerSpot;
  final String _description;
  final bool _enableSync;
  final List<WorkLocationConfig> _workLocationConfigs;

  FingerSpot({
    required this.username,
    required this.password,
    required this.server,
    required this.databaseName,
    required this.port,
    required String description,
    required bool enableSync,
    required List<WorkLocationConfig> workLocationConfigs,
  })  : _description = description,
        _enableSync = enableSync,
        _workLocationConfigs = workLocationConfigs;

  @override
  MachineFingerBrand get brand => _brand;

  @override
  String get description => _description;

  @override
  bool get enableSync => _enableSync;

  @override
  List<WorkLocationConfig> get workLocationConfigs => _workLocationConfigs;

  @override
  Future<void> downloadFromLocalDB() {
    throw UnimplementedError();
  }
}
