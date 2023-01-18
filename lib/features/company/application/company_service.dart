import 'package:hive/hive.dart';

import '../domain/entity/company.dart';
import '../infrastructure/data_sources/company_local_data_provider.dart';
import '../infrastructure/data_sources/company_remote_data_provider.dart';
import '../infrastructure/repositories/company_repository.dart';

class CompanyService {
  final CompanyRepository companyRepository;

  CompanyService({required this.companyRepository});

  Future<List<Company>> fetchCompany() async {
    return await companyRepository.fetchCompany();
  }

  static Future<CompanyService> initService() async {
    Hive.registerAdapter(CompanyAdapter());
    Box<Company> box = await Hive.openBox<Company>('company');

    return CompanyService(
      companyRepository: CompanyRepository(
        companyRemoteDataProvider: CompanyRemoteDataProvider(),
        companyLocalDataProvider: CompanyLocalDataProvider(
          box: box,
        ),
      ),
    );
  }
}
