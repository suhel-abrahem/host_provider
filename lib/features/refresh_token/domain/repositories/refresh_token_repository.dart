import '../../../../core/data_state/data_state.dart';
import '../../data/models/refresh_token_model.dart';
import '../entities/token_entity.dart';

abstract class RefreshTokenRepository {
  Future<DataState<TokenEntity?>?> get({RefreshTokenModel? refreshTokenModel});
}
