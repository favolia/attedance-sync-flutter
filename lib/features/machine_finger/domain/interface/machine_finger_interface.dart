import 'package:attendance_sync/features/machine_finger/domain/machine_finger.dart';

abstract class MachineFingerInterface {
  Future<List<MachineFinger>> getMachineFingers();
  Future<MachineFinger> getMachineFinger(String code);
}
