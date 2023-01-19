import 'package:flutter/foundation.dart';

import '../../../../../locator.dart';
import '../../../../company/application/company_service.dart';
import '../../../../company/domain/entity/company.dart';
import '../../../../work_location/application/worklocation_service.dart';
import '../../../../work_location/domain/entity/worklocation.dart';

class WorkLocationPickerProvider extends ChangeNotifier {
  final CompanyService _companyService = locator<CompanyService>();
  final WorkLocationService _workLocationService =
      locator<WorkLocationService>();

  Company? selectedCompany;
  List<Company> companies = [];

  WorkLocation? selectedWorkLocation;
  List<WorkLocation> worklocations = [];

  WorkLocationPickerProvider() {
    fetchCompany();
  }

  setCompany(Company company) {
    selectedCompany = company;
    fetchWorkLocation();
    notifyListeners();
  }

  Future<void> fetchCompany() async {
    companies = await _companyService.fetchCompany();
    notifyListeners();
  }

  Future<void> fetchWorkLocation() async {
    if (selectedCompany != null) {
      worklocations =
          await _workLocationService.getWorklocationByCompany(selectedCompany!);
      selectedWorkLocation = worklocations.first;
      notifyListeners();
    }
  }
}
