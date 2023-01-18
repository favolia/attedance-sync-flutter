import '../entity/machine_finger.dart';

abstract class MachineFingerRepository {
  Future<List<MachineFinger>> fetchMachineFinger();
  Future<MachineFinger> getMachineFinger(String ipAddress);
}
