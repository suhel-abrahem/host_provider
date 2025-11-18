part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial() = HomePageStateInitial;
  const factory HomePageState.loading() = HomePageStateLoading;
  const factory HomePageState.loaded({HomePageEntity? data}) =
      HomePageStateLoaded;
  const factory HomePageState.error({required String message}) =
      HomePageStateError;
  const factory HomePageState.noData() = HomePageStateNoData;
  const factory HomePageState.noInternet() = HomePageStateNoInternet;
  const factory HomePageState.unauthenticated() = HomePageStateUnauthenticated;
}
