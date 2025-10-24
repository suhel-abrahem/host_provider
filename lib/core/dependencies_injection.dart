import 'package:get_it/get_it.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/core/resource/connectivity/check_connectivity.dart';
import 'package:hosta_provider/features/login_page/data/models/login_model.dart';
import 'package:hosta_provider/features/login_page/data/models/login_state_model.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/login_page/domain/repositories/login_repository.dart';
import 'package:hosta_provider/features/login_page/domain/usecases/login_usecase.dart';
import 'package:hosta_provider/features/login_page/presentation/bloc/login_bloc_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/app/app_preferences.dart';
import '../features/login_page/data/repositories/login_repository_implements.dart';

GetIt getItInstance = GetIt.instance;
Future<void> initDependencies() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  getItInstance.registerFactory<AppPreferences>(
    () => AppPreferences(sharedPreferences),
  );
  //comon services and utilities
  getItInstance.registerSingleton<CommonService>(CommonService());
  getItInstance.registerSingleton<CheckConnectivity>(CheckConnectivity());
  //login feature dependencies
  getItInstance.registerSingleton<LoginStateEntity>(LoginStateEntity());
  getItInstance.registerSingleton<LoginModel>(LoginModel());
  getItInstance.registerSingleton<LoginStateModel>(LoginStateModel());
  getItInstance.registerSingleton<LoginRepository>(
    LoginRepositoryImplements(
      getItInstance<CommonService>(),
      getItInstance<CheckConnectivity>(),
    ),
  );
  getItInstance.registerSingleton<LoginUsecase>(
    LoginUsecase(getItInstance<LoginRepository>()),
  );
  //bloc
  getItInstance.registerFactory<LoginBlocBloc>(
    () => LoginBlocBloc(getItInstance<LoginUsecase>()),
  );
}
