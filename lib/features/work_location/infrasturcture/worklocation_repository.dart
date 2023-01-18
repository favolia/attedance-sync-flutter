import '../../company/domain/entity/company.dart';
import '../domain/entity/worklocation.dart';
import 'data_sources/worklocation_remote_data_provider.dart';

class WorkLocationRepository {
  final WorkLocationRemoteDataProvider workLocationRemoteDataProvider;

  WorkLocationRepository({required this.workLocationRemoteDataProvider});

  Future<List<WorkLocation>> getWorklocationByCompany(Company company) async {
    return await workLocationRemoteDataProvider
        .getWorklocationByCompany(company);
  }
}
