import 'package:hive/hive.dart';

part 'company.g.dart';

@HiveType(typeId: 0)
class Company {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;

  Company({
    required this.id,
    required this.name,
  });

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      id: json['id'],
      name: json['name'],
    );
  }
}
