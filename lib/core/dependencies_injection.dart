import 'package:get_it/get_it.dart';
import 'package:hosta_provider/core/resource/common_service/common_service.dart';
import 'package:hosta_provider/core/resource/connectivity/check_connectivity.dart';
import 'package:hosta_provider/features/login_page/data/models/login_model.dart';
import 'package:hosta_provider/features/login_page/data/models/login_state_model.dart';
import 'package:hosta_provider/features/login_page/domain/entities/login_state_entity.dart';
import 'package:hosta_provider/features/login_page/domain/repositories/login_repository.dart';
import 'package:hosta_provider/features/login_page/domain/usecases/login_usecase.dart';
import 'package:hosta_provider/features/login_page/presentation/bloc/login_bloc_bloc.dart';
import 'package:hosta_provider/features/signup_page/data/models/city_model.dart';
import 'package:hosta_provider/features/signup_page/data/models/country_model.dart';
import 'package:hosta_provider/features/signup_page/data/models/signup_model.dart';
import 'package:hosta_provider/features/signup_page/data/repositories/get_cities_repository_implements.dart';
import 'package:hosta_provider/features/signup_page/data/repositories/get_country_repository_implement.dart';
import 'package:hosta_provider/features/signup_page/data/repositories/get_position_repository_implements.dart';
import 'package:hosta_provider/features/signup_page/data/repositories/signup_repository_implements.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/city_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/country_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/position_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/entities/signup_entity.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/get_cities_repository.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/get_country_repository.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/get_position_repository.dart';
import 'package:hosta_provider/features/signup_page/domain/repositories/signup_repository.dart';
import 'package:hosta_provider/features/signup_page/domain/usecases/get_cities_usecase.dart';
import 'package:hosta_provider/features/signup_page/domain/usecases/get_country_usecase.dart';
import 'package:hosta_provider/features/signup_page/domain/usecases/get_position_usecase.dart';
import 'package:hosta_provider/features/signup_page/domain/usecases/signup_usecase.dart';
import 'package:hosta_provider/features/signup_page/presentation/bloc/get_cities_bloc.dart';
import 'package:hosta_provider/features/signup_page/presentation/bloc/get_countries_bloc.dart';
import 'package:hosta_provider/features/signup_page/presentation/bloc/get_position_bloc.dart';
import 'package:hosta_provider/features/signup_page/presentation/bloc/signup_bloc_bloc.dart';
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
  // end of login
  // signup
  //models and entities
  getItInstance.registerSingleton<SignupEntity>(SignupEntity());
  getItInstance.registerSingleton<SignupModel>(SignupModel());
  getItInstance.registerSingleton<CityEntity>(CityEntity());
  getItInstance.registerSingleton<CityModel>(CityModel());
  getItInstance.registerSingleton<CountryEntity>(CountryEntity());
  getItInstance.registerSingleton<CountryModel>(CountryModel());
  getItInstance.registerSingleton<PositionEntity>(PositionEntity());
  //repository
  getItInstance.registerSingleton<SignupRepository>(
    SignupRepositoryImplements(
      commonService: getItInstance(),
      checkConnectivity: getItInstance(),
    ),
  );
  getItInstance.registerSingleton<GetCitiesRepository>(
    GetCitiesRepositoryImplements(checkConnectivity: getItInstance()),
  );
  getItInstance.registerSingleton<GetCountryRepository>(
    GetCountryRepositoryImplement(checkConnectivity: getItInstance()),
  );
  getItInstance.registerSingleton<GetPositionRepository>(
    GetPositionRepositoryImplements(checkConnectivity: getItInstance()),
  );
  //use case
  getItInstance.registerSingleton<SignupUsecase>(
    SignupUsecase(signupRepository: getItInstance()),
  );
  getItInstance.registerSingleton<GetCountryUsecase>(
    GetCountryUsecase(
      getCountryRepository: getItInstance<GetCountryRepository>(),
    ),
  );
  getItInstance.registerSingleton<GetCitiesUsecase>(
    GetCitiesUsecase(getCitiesRepository: getItInstance()),
  );
  getItInstance.registerSingleton<GetPositionUsecase>(
    GetPositionUsecase(getPositionRepository: getItInstance()),
  );
  //bloc
  getItInstance.registerFactory<SignupBlocBloc>(
    () => SignupBlocBloc(getItInstance()),
  );
  getItInstance.registerFactory<GetCitiesBloc>(
    () => GetCitiesBloc(getItInstance()),
  );
  getItInstance.registerFactory<GetCountriesBloc>(
    () => GetCountriesBloc(getItInstance<GetCountryUsecase>()),
  );
  getItInstance.registerFactory<GetPositionBloc>(
    () => GetPositionBloc(getItInstance()),
  );
  // end of signup
}
