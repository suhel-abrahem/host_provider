import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/signup_page/data/models/country_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/country_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/usecases/get_country_usecase.dart';

part 'get_countries_event.dart';
part 'get_countries_state.dart';
part 'get_countries_bloc.freezed.dart';

class GetCountriesBloc extends Bloc<GetCountriesEvent, GetCountriesState> {
  final GetCountryUsecase _getCountryUsecase;
  GetCountriesBloc(this._getCountryUsecase)
    : super(GetCountriesState.initial()) {
    on<GetCountriesEventStarted>((event, emit) {
      // if ((event.canAccessAddress ?? false)) {
      //   emit(GetCountriesState.canAccessAddress());
      // } else {
      //   emit(GetCountriesState.cantAccessAddress());
      // }
    });
    on<GetCountriesEventGetCountries>((event, emit) async {
      emit(GetCountriesState.loading());
      await _getCountryUsecase.call(params: event.countryModel).then((onValue) {
        print("bloc $onValue");
        if (onValue is NOInternetDataState) {
          emit(GetCountriesState.noInternet());
        } else if (onValue is DataSuccess) {
          emit(GetCountriesState.got(onValue?.data));
        } else {
          emit(GetCountriesState.error(onValue?.error));
        }
      });
    });
  }
}
