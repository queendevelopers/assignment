import 'package:dio/dio.dart';
import 'package:swivt/src/data/api/api_constants.dart';

class Request {
  String authToken = '';
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      receiveDataWhenStatusError: true,
      validateStatus: (value) {
        return value! <= 500;
      },
      headers: {
        "Accept": 'application/json',
        "Authorization":
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkN2ZmNDk0NzE4MTg2ZWQ5NGVlNzVjZjczYzFhMzIxNCIsInN1YiI6IjVkMDQ1OWM1OTI1MTQxNjNkMWJjNDZjYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.tTDwJEVH88cCWCfTd42zvN4AsMR2pgix0QdzVJQzzDM",
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
