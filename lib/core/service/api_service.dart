import 'package:dio/dio.dart';
import 'package:dop_case/component/component_shelf.dart';
import 'package:dop_case/core/core_shelf.dart';

class ApiService {
  final _dio = Dio(BaseOptions(baseUrl: GlobalVars.apiConstants.baseUrl));

  Future<Response> fetchData(String path) async {
    try {
      return await _dio.get(path);
    } catch (e) {
      throw Exception(e);
    }
  }
}
