import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../data/models/city_model.dart';
import '../../domain/entities/city_entity.dart';
import '../../domain/usecases/get_cities_usecase.dart';

part 'get_cities_bloc.freezed.dart';
part 'get_cities_event.dart';
part 'get_cities_state.dart';

class GetCitiesBloc extends Bloc<GetCitiesEvent, GetCitiesState> {
  final GetCitiesUsecase _getCitiesUsecase;
  GetCitiesBloc(this._getCitiesUsecase) : super(GetCitiesState.initial()) {
    on<GetCitiesEventStarted>((event, emit) {});
    on<GetCitiesEventGetCities>((event, emit) async {
      emit(GetCitiesState.loading());
      await _getCitiesUsecase.call(params: event.cityModel).then((onValue) {
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
