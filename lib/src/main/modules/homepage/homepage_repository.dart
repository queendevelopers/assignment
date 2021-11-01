import 'package:swivt/src/data/models/list_response.dart';
import 'package:swivt/src/main/modules/base_utils/base_repository.dart';

class HomepageRepository extends BaseRepository {
  //
  Future<ListResponse> getMovies() async {
    var response = await dio.get('/list');
    return listResponseFromMap(response.data);
  }
}
