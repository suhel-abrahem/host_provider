import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/signup_page/data/models/city_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/city_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/usecases/get_cities_usecase.dart';

part 'get_cities_event.dart';
part 'get_cities_state.dart';
part 'get_cities_bloc.freezed.dart';

class GetCitiesBloc extends Bloc<GetCitiesEvent, GetCitiesState> {
  final GetCitiesUsecase _getCitiesUsecase;
  GetCitiesBloc(this._getCitiesUsecase) : super(GetCitiesState.initial()) {
    on<GetCitiesEventStarted>((event, emit) {});
    on<GetCitiesEventGetCities>((event, emit) async {
      emit(GetCitiesState.loading());
      await _getCitiesUsecase.call(params: event.cityModel).then((onValue) {
        print("cities bloc:$onValue");
        if (onValue is NOInternetDataState) {
          emit(GetCitiesState.noInternet());
        } else if (onValue is DataSuccess) {
          emit(GetCitiesState.got(onValue?.data));
        } else {
          emit(GetCitiesState.error(onValue?.error));
        }
      });
    });
  }
}
