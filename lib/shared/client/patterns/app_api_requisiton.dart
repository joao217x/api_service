import 'package:api_service/shared/client/patterns/app_api_reponse.dart';

abstract class AppApiRequisition {
  Future<AppApiResponse> get(
    String path, {
    Map<String, String>? headers,
    Map<String, dynamic>? query,
  });

  Future<AppApiResponse> post(
    String path, {
    Map<String, String>? body,
    Map<String, dynamic>? query,
  });
}
