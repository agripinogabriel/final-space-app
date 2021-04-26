import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterDioModule {
  @Named("BaseUrl")
  String get baseUrl => 'https://finalspaceapi.com/api/v0/';

  @injectable
  Dio dio(@Named('BaseUrl') String url) {
    return Dio(
      BaseOptions(
        baseUrl: url,
      ),
    );
  }
}