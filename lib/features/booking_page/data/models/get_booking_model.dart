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
  }) = _GetBookingModel;
  factory GetBookingModel.fromJson(Map<String, dynamic> json) =>
      _$GetBookingModelFromJson(json);
}
