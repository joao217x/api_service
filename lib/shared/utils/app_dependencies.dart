import 'package:api_service/main.dart';
import 'package:api_service/shared/client/dio_impl.dart';

class AppDependencies {
  void setup() {
    //Client Dio
    getIt.registerSingleton<DioImplementation>(DioImplementation());
  }
}
