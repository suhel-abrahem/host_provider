import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/language_entity.dart';
import '../../../refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../../../config/app/app_preferences.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/dependencies_injection.dart';
import '../../../refresh_token/data/models/refresh_token_model.dart';
import '../../data/models/language_model.dart';
import '../../domain/usecases/get_languages_usecase.dart';
import '../../domain/usecases/set_languages_usecase.dart';

part 'languges_event.dart';
part 'languges_state.dart';
part 'languges_bloc.freezed.dart';

class LangugesBloc extends Bloc<LangugesEvent, LangugesState> {
  final RefreshTokenUsecase _refreshTokenUsecase;
  final GetLanguagesUseCase _getLanguagesUseCase;
  final SetLanguagesUseCase _setLanguagesUseCase;
  LangugesBloc(
    this._refreshTokenUsecase,
    this._getLanguagesUseCase,
    this._setLanguagesUseCase,
  ) : super(LangugesState.initial()) {
    on<LangugesStarted>((event, emit) {
      emit(LangugesState.initial());
    });
    on<LangugesGetLanguages>((event, emit) async {
      emit(LangugesState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: getItInstance<AppPreferences>()
                  .getUserInfo()
                  ?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _getLanguagesUseCase
                  .call(
                    params: event.languageModel?.copyWith(
                      auth: onValue?.data?.access_token,
                    ),
                  )
                  .then((value) {
                    if (value is DataSuccess) {
                      emit(LangugesState.loaded(languages: value?.data));
                    } else if (value is DataFailed) {
                      emit(LangugesState.error(message: value?.error ?? ""));
                    } else if (value is NOInternetDataState) {
                      emit(LangugesState.noInternet());
                    } else if (value is UnauthenticatedDataState) {
                      emit(LangugesState.unauthenticated());
                    } else {
                      emit(
                        LangugesState.error(message: "Something went wrong"),
                      );
                    }
                  });
            } else if (onValue is DataFailed) {
              emit(LangugesState.error(message: onValue?.error ?? ""));
            } else if (onValue is NOInternetDataState) {
              emit(LangugesState.noInternet());
            } else if (onValue is UnauthenticatedDataState) {
              emit(LangugesState.unauthenticated());
            } else {
              emit(LangugesState.error(message: "Something went wrong"));
            }
          });
    });
    on<LangugesUpdateLanguage>((event, emit) async {
      emit(LangugesState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: getItInstance<AppPreferences>()
                  .getUserInfo()
                  ?.refresh_token,
            ),
          )
          .then((onValue) async {
            if (onValue is DataSuccess) {
              await _setLanguagesUseCase
                  .call(
                    params: event.languageModel?.copyWith(
                      auth: onValue?.data?.access_token,
                    ),
                  )
                  .then((value) {
                    if (value is DataSuccess) {
                      emit(LangugesState.languageSetSuccess());
                    } else if (value is DataFailed) {
                      emit(LangugesState.error(message: value?.error ?? ""));
                    } else if (value is NOInternetDataState) {
                      emit(LangugesState.noInternet());
                    } else if (value is UnauthenticatedDataState) {
                      emit(LangugesState.unauthenticated());
                    } else {
                      emit(
                        LangugesState.error(message: "Something went wrong"),
                      );
                    }
                  });
            } else if (onValue is DataFailed) {
              emit(LangugesState.error(message: onValue?.error ?? ""));
            } else if (onValue is NOInternetDataState) {
              emit(LangugesState.noInternet());
            } else if (onValue is UnauthenticatedDataState) {
              emit(LangugesState.unauthenticated());
            } else {
              emit(LangugesState.error(message: "Something went wrong"));
            }
          });
    });
  }
}
