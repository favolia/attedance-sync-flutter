import '../../company/domain/entity/company.dart';
import '../domain/entity/worklocation.dart';
import '../infrasturcture/data_sources/worklocation_remote_data_provider.dart';
import '../infrasturcture/worklocation_repository.dart';

class WorkLocationService {
  final WorkLocationRepository workLocationRepository;

  WorkLocationService({required this.workLocationRepository});

  static Future<WorkLocationService> initService() async {
    return WorkLocationService(
      workLocationRepository: WorkLocationRepository(
          workLocationRemoteDataProvider: WorkLocationRemoteDataProvider()),
    );
  }

  Future<List<WorkLocation>> getWorklocationByCompany(Company company) async {
    return await workLocationRepository.getWorklocationByCompany(company);
  }
}
