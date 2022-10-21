import 'dart:developer';

import 'package:api_service/features/home/model/all_currencies_model.dart';
import 'package:api_service/main.dart';
import 'package:api_service/shared/client/dio_impl.dart';
import 'package:api_service/shared/utils/app_urls.dart';

class CurrenciesApiService {
  final dioClient = getIt<DioImplementation>();

  Future<AllCurrenciesModel> getCurrencyClient() async {
    final response = await dioClient.get('${AppUrls.baseUrl}');

    inspect(response);

    switch (response.statusCode) {
      case 200:
        return AllCurrenciesModel.fromJson(response.data);
      // case 404:
      //   throw Exception();
      default:
        throw Exception();
    }
  }
}
