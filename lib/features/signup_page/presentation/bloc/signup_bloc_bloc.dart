import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/signup_page/data/models/signup_model.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/usecases/signup_usecase.dart';

part 'signup_bloc_event.dart';
part 'signup_bloc_state.dart';
part 'signup_bloc_bloc.freezed.dart';

class SignupBlocBloc extends Bloc<SignupBlocEvent, SignupBlocState> {
  final SignupUsecase _signupUsecase;
  SignupBlocBloc(this._signupUsecase) : super(SignupBlocState.initial()) {
    on<SignupStartEvent>((event, emit) {});
    on<SignupSignedInEvent>((event, emit) async {
      emit(SignupBlocState.loading());
      await _signupUsecase.call(params: event.signupModel).then((onValue) {
        if (onValue is DataSuccess) {
          if (onValue?.data != null) {
            emit(SignupBlocState.signupSignedUp(signupEntity: onValue?.data));
          } else {
            emit(SignupBlocState.error(onValue?.data));
          }
        } else {
          emit(SignupBlocState.error(onValue?.data));
        }
      });
    });
  }
}
