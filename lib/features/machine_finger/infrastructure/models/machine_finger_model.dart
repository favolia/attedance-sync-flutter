import '../../domain/entity/machine_finger.dart';

class MachineFingerModel extends MachineFinger {
  MachineFingerModel({
    required super.ipAddress,
    required super.description,
    required super.enableDownload,
    required super.worklocations,
  });
}
