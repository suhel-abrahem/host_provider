import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/refresh_token/data/models/refresh_token_model.dart';
import 'package:hosta_provider/features/refresh_token/domain/entities/token_entity.dart';
import 'package:hosta_provider/features/refresh_token/domain/usecases/refresh_token_usecase.dart';

part 'refresh_token_event.dart';
part 'refresh_token_state.dart';
part 'refresh_token_bloc.freezed.dart';

class RefreshTokenBloc extends Bloc<RefreshTokenEvent, RefreshTokenState> {
  final RefreshTokenUsecase _refreshTokenUsecase;
  RefreshTokenBloc(this._refreshTokenUsecase)
    : super(RefreshTokenState.initial()) {
    on<RefreshTokenEventStarted>((event, emit) {});
    on<RefreshTokenEventGet>((event, emit) async {
      emit(RefreshTokenState.loading());
      await _refreshTokenUsecase.call(params: event.refreshTokenModel).then((
        onValue,
      ) {
        if (onValue is DataSuccess) {
          emit(RefreshTokenState.got(onValue?.data));
        } else if (onValue is UnauthenticatedDataState) {
          emit(RefreshTokenState.unauthenticated());
        } else {
          emit(RefreshTokenState.error());
        }
      });
    });
  }
}
