import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/features/signup_page/data/models/city_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/city_entity.dart';

part 'get_cities_event.dart';
part 'get_cities_state.dart';
part 'get_cities_bloc.freezed.dart';

class GetCitiesBloc extends Bloc<GetCitiesEvent, GetCitiesState> {
  GetCitiesBloc() : super(GetCitiesState.initial()) {
    on<GetCitiesEvent>((event, emit) {});
  }
}
