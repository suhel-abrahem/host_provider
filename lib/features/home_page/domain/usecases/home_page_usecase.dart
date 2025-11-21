import '../../../../core/data_state/data_state.dart';
import '../../../../core/usecase/usecase.dart';

import '../../data/models/home_page_model.dart';
import '../entities/home_page_entity.dart';
import '../repositories/home_page_repository.dart';

class HomePageUseCase
    implements UseCase<DataState<HomePageEntity?>?, HomePageModel?> {
  final HomePageRepository _repository;

  HomePageUseCase(this._repository);

  @override
  Future<DataState<HomePageEntity?>?> call({HomePageModel? params}) async {
    return await _repository.getHomePageData(params);
  }
}
