part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.started() = HomePageEventStarted;
  const factory HomePageEvent.fetchHomePageData({
    required HomePageModel? model,
  }) = HomePageEventFetchHomePageData;
}
