import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/core/usecase/usecase.dart';
import 'package:hosta_provider/features/refresh_token/data/models/refresh_token_model.dart';
import 'package:hosta_provider/features/refresh_token/domain/entities/token_entity.dart';
import 'package:hosta_provider/features/refresh_token/domain/repositories/refresh_token_repository.dart';

class RefreshTokenUsecase
    implements UseCase<DataState<TokenEntity?>?, RefreshTokenModel> {
  final RefreshTokenRepository _refreshTokenRepository;

  RefreshTokenUsecase({required RefreshTokenRepository refreshTokenRepository})
    : _refreshTokenRepository = refreshTokenRepository;
  @override
  Future<DataState<TokenEntity?>?> call({RefreshTokenModel? params}) {
    return _refreshTokenRepository.get(refreshTokenModel: params);
  }
}
