import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../domain/entity/company.dart';
import '../data_sources/company_local_data_provider.dart';
import '../data_sources/company_remote_data_provider.dart';

class CompanyRepository {
  final CompanyRemoteDataProvider companyRemoteDataProvider;
  final CompanyLocalDataProvider companyLocalDataProvider;

  CompanyRepository({
    required this.companyRemoteDataProvider,
    required this.companyLocalDataProvider,
  });

  Future<List<Company>> fetchCompany() async {
    var isConnected = await InternetConnectionChecker().hasConnection;

    if (isConnected) {
      try {
        final List<Company> companies =
            await companyRemoteDataProvider.fetchCompany();
        await companyLocalDataProvider.cacheCompanies(companies);
        return companies;
      } catch (e) {
        throw Exception('Server Exception $e.toString()');
      }
    } else {
      return companyLocalDataProvider.fetchCompany();
    }
  }
}
