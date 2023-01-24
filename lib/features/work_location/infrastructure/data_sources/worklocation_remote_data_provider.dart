import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../../../company/domain/entity/company.dart';
import '../../domain/entity/worklocation.dart';

class WorkLocationRemoteDataProvider {
  Future<List<WorkLocation>> fetchWorkLocation() async {
    Uri endPoint = Uri.https(
      'hris.bosowa.co.id',
      '/hris_api/attendance_sync/worklocation',
    );

    http.Response response = await http.get(endPoint);
    var responseDecoded = convert.jsonDecode(response.body);

    List<WorkLocation> worklocations = [];
    for (var element in responseDecoded) {
      worklocations.add(WorkLocation.fromJson(element));
    }
    return worklocations;
  }

  Future<List<WorkLocation>> getWorklocationByCompany(Company company) async {
    Uri endPoint = Uri.https(
      'hris.bosowa.co.id',
      '/hris_api/attendance_sync/worklocation',
      {
        'company_id': company.id.toString(),
      },
    );

    http.Response response = await http.get(endPoint);
    var responseDecoded = convert.jsonDecode(response.body);

    List<WorkLocation> worklocations = [];
    for (var element in responseDecoded) {
      worklocations.add(WorkLocation.fromJson(element));
    }
    return worklocations;
  }
}
