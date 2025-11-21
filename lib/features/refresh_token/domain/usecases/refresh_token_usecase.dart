import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/refresh_token_model.dart';
import '../entities/token_entity.dart';
import '../repositories/refresh_token_repository.dart';

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
