import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '/config/app/app_preferences.dart';
import '/core/data_state/data_state.dart';
import '/core/dependencies_injection.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/profile_page/domain/usecases/delete_account_usecase.dart';
import '/features/refresh_token/data/models/refresh_token_model.dart';
import '/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

import '../../data/models/profile_model.dart';

part 'delete_account_event.dart';
part 'delete_account_state.dart';
part 'delete_account_bloc.freezed.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  final RefreshTokenUsecase _refreshTokenUsecase;
  final DeleteAccountUsecase _deleteAccountUsecase;

  DeleteAccountBloc(this._refreshTokenUsecase, this._deleteAccountUsecase)
    : super(DeleteAccountStateInitial()) {
    on<DeleteAccountEventStarted>((event, emit) {
      emit(DeleteAccountState.initial());
    });
    on<DeleteAccountEventDeleteAccount>((event, emit) async {
      final LoginStateEntity? loginStateEntity = getItInstance<AppPreferences>()
          .getUserInfo();

      emit(DeleteAccountState.loading());
      await _refreshTokenUsecase
          .call(
            params: RefreshTokenModel(
              refresh_token: loginStateEntity?.refresh_token,
              token: loginStateEntity?.access_token,
            ),
          )
          .then((refreshTokenResult) async {
            if (refreshTokenResult is DataSuccess) {
              print("bloc:${event.profileModel?.password}");
              await _deleteAccountUsecase
                  .call(
                    params: event.profileModel?.copyWith(
                      authToken: refreshTokenResult?.data?.access_token,
                    ),
                  )
                  .then((deleteAccountResult) async {
                    if (deleteAccountResult is DataSuccess) {
                      emit(DeleteAccountState.success());
                    } else if (deleteAccountResult
                        is UnauthenticatedDataState) {
                      emit(
                        DeleteAccountState.unauthenticated(
                          errorMessage:
                              deleteAccountResult.error ?? "Unauthenticated",
                        ),
                      );
                    } else if (deleteAccountResult is NOInternetDataState) {
                      emit(DeleteAccountState.noInternet());
                    } else {
                      emit(
                        DeleteAccountState.failure(
                          errorMessage:
                              deleteAccountResult?.error ?? "Unknown Error",
                        ),
                      );
                    }
                  });
            } else {
              emit(
                DeleteAccountState.unauthenticated(
                  errorMessage: refreshTokenResult?.error ?? "Unauthenticated",
                ),
              );
            }
          });
    });
  }
}
