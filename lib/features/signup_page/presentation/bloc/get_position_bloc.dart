import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/data_state/data_state.dart';
import '../../domain/entities/position_entity.dart';
import '../../domain/usecases/get_position_usecase.dart';

part 'get_position_bloc.freezed.dart';
part 'get_position_event.dart';
part 'get_position_state.dart';

class GetPositionBloc extends Bloc<GetPositionEvent, GetPositionState> {
  final GetPositionUsecase _getPositionUsecase;
  GetPositionBloc(this._getPositionUsecase)
    : super(GetPositionState.initial()) {
    on<GetPositionEventStarted>((event, emit) {});
    on<GetPositionEventGet>((event, emit) async {
      emit(GetPositionState.loading());
      await _getPositionUsecase.call().then((onValue) {
        if (onValue is LocationDisabledDataState) {
          emit(GetPositionState.locationDisabled());
        } else if (onValue is LocationPermissionDeniedDataState) {
          emit(GetPositionState.locationPermissionDenied());
        } else if (onValue is LocationPermissionDeniedForeverDataState) {
          emit(GetPositionState.locationPermissionDeniedForever());
        } else if (onValue is DataSuccess) {
          emit(GetPositionState.got(positionEntity: onValue?.data));
        } else {
          emit(GetPositionState.error());
        }
      });
    });
  }
}
