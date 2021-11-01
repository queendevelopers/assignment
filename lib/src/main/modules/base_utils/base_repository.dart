import 'package:dio/dio.dart';
import 'package:swivt/app/locator.dart';
import 'package:swivt/src/data/api/requests.dart';

class BaseRepository {
  final _request = locator<Request>();
  Dio get dio => _request.dio;
}
