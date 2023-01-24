import '../../../work_location/domain/entity/worklocation.dart';

class WorkLocationConfig {
  final WorkLocation workLocation;
  final bool includeFirst;
  final bool includeSecond;
  final bool includeThird;

  WorkLocationConfig({
    required this.workLocation,
    required this.includeFirst,
    required this.includeSecond,
    required this.includeThird,
  });

  WorkLocationConfig copyWith({
    bool? includeFirst,
    bool? includeSecond,
    bool? includeThird,
  }) {
    return WorkLocationConfig(
      workLocation: workLocation,
      includeFirst: includeFirst ?? this.includeFirst,
      includeSecond: includeSecond ?? this.includeSecond,
      includeThird: includeThird ?? this.includeThird,
    );
  }
}
