abstract class DataState {}

class DataInitial extends DataState {}

class DataLoaded extends DataState {
  final List<String> data;

  DataLoaded({required this.data});
}

class DataError extends DataState {
  final String error;

  DataError({required this.error});
}
