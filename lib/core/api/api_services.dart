import 'dart:convert';
import 'package:dio/dio.dart';

import '../helper/app_constants.dart';

class ApiService {
  final _baseUrl = AppConstants.baseUrl;
  Dio dio;
  ApiService(this.dio);
  Future<dynamic> get({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
    var body,
  }) async {
    var response = await dio.get(
      '$_baseUrl$endPoint',
      queryParameters: queryParameters,
      data: body,
    );
    return response.data;
  }

  Future<Map<String, dynamic>> post({
    required String endPoint,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? queryParameters,
    required var body,
  }) async {
    dio = Dio(BaseOptions(
      baseUrl: _baseUrl,
      headers: headers,
      queryParameters: queryParameters,
    ));
    var response = await dio.post(endPoint,
        data: body.keys
            .map((key) => "$key=${Uri.encodeComponent(body[key])}")
            .join("&"));
    return response.data;
  }

  Future<dynamic> postBody({
    Object? data,
    Map<String, dynamic>? queryParameters,
    required String endPoint,
  }) async {
    var dataa = json.encode(data);
    print('dataa');
    print(dataa);

    var response = await dio.request(
      '${AppConstants.baseUrl + endPoint}',
      options: Options(
        method: 'POST',
      ),
      queryParameters: queryParameters,
      data: dataa,
    );
    if (response.statusCode == 200) {
      print("json.encode(response.data)");
      print(json.encode(response.data));
    } else {
      print(response.statusMessage);
    }
    return response.data;
  }
}
