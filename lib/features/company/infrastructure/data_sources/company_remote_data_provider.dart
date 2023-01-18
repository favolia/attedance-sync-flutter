import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

import '../../domain/entity/company.dart';

class CompanyRemoteDataProvider {
  Future<List<Company>> fetchCompany() async {
    http.Response response = await http
        .get(Uri.https('hris.bosowa.co.id', '/hris_api/realtime/company'));
    var responseDecoded = convert.jsonDecode(response.body);

    List<Company> companies = [];
    for (var element in responseDecoded) {
      companies.add(Company.fromJson(element));
    }
    return companies;
  }
}
