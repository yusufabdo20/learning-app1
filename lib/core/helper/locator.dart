import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:testtt/core/api/api_services.dart';

final getIt = GetIt.instance;
void setupServiceLocatorByGetIt() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );
}
