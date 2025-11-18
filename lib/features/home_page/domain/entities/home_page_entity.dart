import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_page_entity.freezed.dart';
part 'home_page_entity.g.dart';

@freezed
abstract class HomePageEntity with _$HomePageEntity {
  const factory HomePageEntity({
    @Default(0) int? today_bookings,
    @Default(0) int? completed_revenue,
    @Default(0) int? current_month_bookings,
    @Default(0) int? current_month_revenue,
    @Default(0) int? in_progress_bookings,
    @Default(0) int? pending_bookings,
    @Default([]) List<dynamic>? yearly_stats,
  }) = _HomePageEntity;
  factory HomePageEntity.fromJson(Map<String, dynamic> json) =>
      _$HomePageEntityFromJson(json);
}
