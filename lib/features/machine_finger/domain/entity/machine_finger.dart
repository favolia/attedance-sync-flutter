import 'fingerspot.dart';
import 'machine_finger_brand.dart';
import 'solution.dart';
import 'worklocation_config.dart';

abstract class MachineFinger {
  final MachineFingerBrand brand;
  final String description;
  final List<WorkLocationConfig> workLocationConfigs;
  final bool enableSync;

  Future<void> downloadFromLocalDB();

  factory MachineFinger.createSolution({
    required String ipAddress,
    required String databasePath,
    required String description,
    List<WorkLocationConfig> workLocationConfigs = const [],
    bool enableSync = false,
  }) {
    return Solution(
      ipAddress: ipAddress,
      dbPath: databasePath,
      description: description,
      workLocationConfigs: workLocationConfigs,
      enableSync: enableSync,
    );
  }

  factory MachineFinger.createFingerSpot({
    required String username,
    required String password,
    required String server,
    required String databaseName,
    required int port,
    required String description,
    List<WorkLocationConfig> workLocationConfigs = const [],
    bool enableSync = false,
  }) {
    return FingerSpot(
      username: username,
      password: password,
      server: server,
      databaseName: databaseName,
      port: port,
      description: description,
      enableSync: enableSync,
      workLocationConfigs: workLocationConfigs,
    );
  }

  MachineFinger(
    this.description,
    this.brand,
    this.workLocationConfigs,
    this.enableSync,
  );
}
