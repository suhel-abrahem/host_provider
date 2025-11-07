import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/core/enums/login_state_enum.dart';
import 'package:hosta_provider/features/login_page/domain/usecases/login_usecase.dart';

import '../../../../core/data_state/data_state.dart';
import '../../data/models/login_state_model.dart';
import '../../domain/entities/login_state_entity.dart';

part 'login_bloc_event.dart';
part 'login_bloc_state.dart';
part 'login_bloc_bloc.freezed.dart';

class LoginBlocBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  LoginUsecase? _loginUsecase;

  LoginBlocBloc(this._loginUsecase)
    : super(LoginBlocState.loginStateInitial()) {
    on<LoginEventStarted>((event, emit) {
      emit(LoginBlocState.loginStateInitial());
    });
    on<LoginUserEvent>((event, emit) async {
      emit(LoginBlocState.loginStateLoading());
      print("LoginUserEvent called with: ${event.loginStateModel}");
      await _loginUsecase?.call(params: event.loginStateModel).then((
        dataState,
      ) {
        print("LoginUsecase returned: ${dataState?.error}");
        if (dataState is DataSuccess) {
          emit(
            LoginBlocState.loginStateLoaded(loginStateEntity: dataState?.data),
          );
        } else if (dataState is NOInternetDataState<LoginStateModel?>) {
          emit(LoginBlocState.loginStateNoInternet());
        } else if (dataState is OtpRequestedDataState) {
          emit(LoginBlocState.unAuthorized());
        } else {
          emit(LoginBlocState.loginStateError(message: "An error occurred"));
        }
      });
    });
  }
}
