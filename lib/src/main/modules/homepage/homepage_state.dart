import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:swivt/src/data/models/list_response.dart';

@immutable
abstract class HomepageState extends Equatable {
  @override
  List<Object> get props => [];
}

@immutable
class HomepageInitialState extends HomepageState {}

@immutable
class HomepageLoadedState extends HomepageState {
  final ListResponse listResponse;

  HomepageLoadedState(this.listResponse);
}

@immutable
class HomepageNoDataState extends HomepageState {
  final String message;
  HomepageNoDataState(this.message);
}

@immutable
class HomepageErrorState extends HomepageState {
  final String message;
  HomepageErrorState(this.message);
}

@immutable
class HomepageLoadingState extends HomepageState {
  HomepageLoadingState();

  @override
  List<Object> get props => [];
}
