import 'package:hive/hive.dart';

part 'worklocation.g.dart';

@HiveType(typeId: 1)
class WorkLocation {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String code;

  WorkLocation({
    required this.name,
    required this.code,
  });

  factory WorkLocation.fromJson(Map<String, dynamic> json) {
    return WorkLocation(
      name: json['name'] + ' [' + json['id'] + ']',
      code: json['id'],
    );
  }
}
