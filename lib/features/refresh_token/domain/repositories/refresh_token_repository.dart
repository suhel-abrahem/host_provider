import 'package:hosta_provider/core/data_state/data_state.dart';
import 'package:hosta_provider/features/refresh_token/data/models/refresh_token_model.dart';
import 'package:hosta_provider/features/refresh_token/domain/entities/token_entity.dart';

abstract class RefreshTokenRepository {
  Future<DataState<TokenEntity?>?> get({RefreshTokenModel? refreshTokenModel});
}
