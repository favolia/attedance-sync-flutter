import '../../../work_location/domain/entity/worklocation.dart';

class MachineFinger {
  final String ipAddress;
  final String description;
  final bool enableDownload;
  final List<WorkLocation> worklocations;

  MachineFinger({
    required this.ipAddress,
    required this.description,
    required this.enableDownload,
    required this.worklocations,
  });
}
