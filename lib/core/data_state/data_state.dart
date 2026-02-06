abstract class DataState<T> {
  final T? data;
  final String? error;
  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess({super.data});
}

class DataError<T> extends DataState<T> {
  const DataError({super.data, super.error});
}

class DataFailed<T> extends DataState<T> {
  const DataFailed({required super.error});
}

class NoDataDataState<T> extends DataState<T> {
  const NoDataDataState();
}

class NOInternetDataState<T> extends DataState<T> {
  const NOInternetDataState();
}

class OtpRequestedDataState<T> extends DataState<T> {
  const OtpRequestedDataState({super.data});
}

class LocationDisabledDataState<T> extends DataState<T> {
  const LocationDisabledDataState();
}

class LocationPermissionDeniedDataState<T> extends DataState<T> {
  const LocationPermissionDeniedDataState();
}

class LocationPermissionDeniedForeverDataState<T> extends DataState<T> {
  const LocationPermissionDeniedForeverDataState();
}

class UnauthenticatedDataState<T> extends DataState<T> {
  const UnauthenticatedDataState({required super.error});
}

class NotFoundDataState<T> extends DataState<T> {
  const NotFoundDataState({required super.error});
}

class TooManyRequestsDataState<T> extends DataState<T> {
  const TooManyRequestsDataState({required super.error, super.data});
}
