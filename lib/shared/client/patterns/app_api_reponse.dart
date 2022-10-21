import 'package:dio/dio.dart' as dio;

class AppApiResponse {
  final int? statusCode;
  final dynamic data;

  AppApiResponse({
    required this.statusCode,
    required this.data,
  });

  factory AppApiResponse.fromDioResponse(dio.Response response) {
    return AppApiResponse(
      statusCode: response.statusCode,
      data: response.data,
    );
  }
}
