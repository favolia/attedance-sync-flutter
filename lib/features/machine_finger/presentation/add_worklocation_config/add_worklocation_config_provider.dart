import 'package:flutter/foundation.dart';

import '../../../../locator.dart';
import '../../../company/application/company_service.dart';
import '../../../company/domain/entity/company.dart';
import '../../../work_location/application/worklocation_service.dart';
import '../../../work_location/domain/entity/worklocation.dart';

class AddWorkLocationConfigProvider extends ChangeNotifier {
  final CompanyService _companyService = locator<CompanyService>();
  final WorkLocationService _workLocationService =
      locator<WorkLocationService>();

  Company? selectedCompany;
  WorkLocation? selectedWorkLocation;
  bool _includeFirst = true;
  bool _includeSecond = false;
  bool _includeThird = false;

  bool get includeFirst => _includeFirst;
  bool get includeSecond => _includeSecond;
  bool get includeThird => _includeThird;
  set includeFirst(value) {
    _includeFirst = value;
    notifyListeners();
  }

  set includeSecond(value) {
    _includeSecond = value;
    notifyListeners();
  }

  set includeThird(value) {
    _includeThird = value;
    notifyListeners();
  }

  List<Company> companies = [];
  List<WorkLocation> workLocations = [];

  AddWorkLocationConfigProvider() {
    fetchCompany();
  }

  Future fetchCompany() async {
    companies = await _companyService.fetchCompany();
    notifyListeners();
  }

  Future setCompany(Company company) async {
    selectedCompany = company;
    await getWorkLocationByCompany(company);
  }

  Future getWorkLocationByCompany(Company company) async {
    workLocations =
        await _workLocationService.getWorklocationByCompany(company);
    notifyListeners();
  }
}
