import '../../company/domain/entity/company.dart';
import '../domain/entity/worklocation.dart';
import '../infrasturcture/worklocation_repository.dart';

class WorkLocationService {
  final WorkLocationRepository workLocationRepository;

  WorkLocationService({required this.workLocationRepository});

  Future<List<WorkLocation>> getWorklocationByCompany(Company company) async {
    return await workLocationRepository.getWorklocationByCompany(company);
  }
}
