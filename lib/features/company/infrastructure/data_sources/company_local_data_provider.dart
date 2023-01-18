import 'package:hive/hive.dart';

import '../../domain/entity/company.dart';

class CompanyLocalDataProvider {
  final Box<Company> box;

  CompanyLocalDataProvider({
    required this.box,
  });

  List<Company> fetchCompany() {
    return box.values.toList();
  }

  Future<void> cacheCompanies(List<Company> companies) async {
    await box.clear();
    await box.addAll(companies);
  }
}
