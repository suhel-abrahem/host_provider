import '../../data/models/language_model.dart';

import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';

import '../entities/language_entity.dart';
import '../repositories/profile_repository.dart';

class GetLanguagesUseCase
    implements UseCase<DataState<List<LanguageEntity?>?>?, LanguageModel?> {
  final ProfileRepository _profileRepository;

  GetLanguagesUseCase(this._profileRepository);
  @override
  Future<DataState<List<LanguageEntity?>?>?> call({
    LanguageModel? params,
  }) async {
    return _profileRepository.getLanguages(params);
  }
}
