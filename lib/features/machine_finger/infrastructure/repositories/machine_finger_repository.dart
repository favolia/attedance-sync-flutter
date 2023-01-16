import '../../domain/interface/machine_finger_interface.dart';
import '../../domain/machine_finger.dart';

class MachineFingerRepository implements MachineFingerInterface {
  @override
  Future<MachineFinger> getMachineFinger(String code) {
    // TODO: implement getMachineFinger
    throw UnimplementedError();
  }

  @override
  Future<List<MachineFinger>> getMachineFingers() {
    // TODO: implement getMachineFingers
    throw UnimplementedError();
  }
}
