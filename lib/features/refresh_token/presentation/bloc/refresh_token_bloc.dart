import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/data_state/data_state.dart';
import '../../data/models/refresh_token_model.dart';
import '../../domain/entities/token_entity.dart';
import '../../domain/usecases/refresh_token_usecase.dart';

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
