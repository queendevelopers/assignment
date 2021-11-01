import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swivt/src/data/models/list_response.dart';
import 'package:swivt/src/main/modules/homepage/homepage_event.dart';
import 'package:swivt/src/main/modules/homepage/homepage_repository.dart';
import 'package:swivt/src/main/modules/homepage/homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  final HomepageRepository _homepageRepo = HomepageRepository();

  HomepageBloc({HomepageState? initialState})
      : super(initialState ?? HomepageInitialState());

  get initialState => HomepageInitialState();

  @override
  Stream<HomepageState> mapEventToState(HomepageEvent event) async* {
    print(event);
    if (event is HomepageLoadEvent) {
      yield HomepageLoadingState();
      try {
        final ListResponse movies = (await _homepageRepo.getMovies());
        // print(movies.id);
        if (movies.id == null) {
          print(movies.id);
          yield HomepageNoDataState('Unable to load lists');
        } else
          yield HomepageLoadedState(movies);
      } catch (e) {
        print('error occured');
        yield HomepageErrorState('Unable to load lists');
        print(e.toString());
      }
    }
  }
}
