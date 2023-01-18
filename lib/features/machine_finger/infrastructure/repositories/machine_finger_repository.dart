import '../../domain/entity/machine_finger.dart';

import '../../domain/repository/machine_finger_repository.dart';
import '../data_sources/machine_finger_local_data_provider.dart';

class MachineFingerRepositoryImpl implements MachineFingerRepository {
  final MachineFingerLocalDataProvider machineFingerLocalDataProvider;

  MachineFingerRepositoryImpl({
    required this.machineFingerLocalDataProvider,
  });

  @override
  Future<MachineFinger> getMachineFinger(String ipAddress) {
    return machineFingerLocalDataProvider.getMachineFinger(ipAddress);
  }

  @override
  Future<List<MachineFinger>> fetchMachineFinger() {
    throw UnimplementedError();
  }
}
