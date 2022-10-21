import 'package:api_service/shared/client/patterns/app_api_reponse.dart';
import 'package:api_service/shared/client/patterns/app_api_requisiton.dart';
import 'package:dio/dio.dart' as dio;

class DioImplementation implements AppApiRequisition {
  final dio.Dio client = dio.Dio();

  @override
  Future<AppApiResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
  }) async {
    final response = await client.get(
      path,
      queryParameters: query,
      options: dio.Options(
        headers: headers,
        sendTimeout: 1000,
        receiveTimeout: 1000,
      ),
    );

    return AppApiResponse.fromDioResponse(response);
  }

  @override
  Future<AppApiResponse> post(
    String path, {
    Map<String, String>? body,
    Map<String, dynamic>? query,
  }) async {
    final response = await client.post(
      path,
      queryParameters: query,
      options: dio.Options(
        headers: body,
        sendTimeout: 1000,
        receiveTimeout: 1000,
      ),
    );

    return AppApiResponse.fromDioResponse(response);
  }
}
