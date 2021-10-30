import 'package:dio/dio.dart';

class Request {
  final String baseUrl = 'https://cargo.milanthapa.me/api/v1';
  String authToken = '';
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: 'https://cargo.milanthapa.me/api/v1',
      receiveDataWhenStatusError: true,
      validateStatus: (value) {
        return value! < 500;
      },
      headers: {
        "Accept": 'application/json',
      },
    ),
  )
    ..interceptors.add(LogInterceptor(requestBody: true))
    ..interceptors.add(
      InterceptorsWrapper(
        onError: (DioError e, handler) {
          if (e.response?.statusCode == 402) {
            //logout user and go to login page
          }
          return handler.next(e);
        },
      ),
    );
  void setToken(String? token) {
    authToken = token ?? '';
    dio.options.headers['authorization'] = token;
  }
}
