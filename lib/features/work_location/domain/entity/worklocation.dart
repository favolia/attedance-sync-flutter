import 'package:hive/hive.dart';

import '../../../company/domain/entity/company.dart';

part 'worklocation.g.dart';

@HiveType(typeId: 1)
class WorkLocation {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String code;
  @HiveField(2)
  final Company company;

  WorkLocation({
    required this.name,
    required this.code,
    required this.company,
  });

  factory WorkLocation.fromJson(Map<String, dynamic> json, Company company) {
    return WorkLocation(
      name: json['name'],
      code: json['code'],
      company: company,
    );
  }
}
