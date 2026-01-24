import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_booking_model.g.dart';
part 'get_booking_model.freezed.dart';

@freezed
abstract class GetBookingModel with _$GetBookingModel {
  const factory GetBookingModel({
    @Default("") String? auth,
    @Default("") String? reason,
    @Default("") String? acceptLanguage,
    @Default("") String? status,
    @Default("") String? id,
    @Default(0.0) double? additional_cost,
    @Default("") String? additional_cost_notes,
  }) = _GetBookingModel;
  factory GetBookingModel.fromJson(Map<String, dynamic> json) =>
      _$GetBookingModelFromJson(json);
}
