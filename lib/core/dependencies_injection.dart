import 'package:get_it/get_it.dart';
import 'resource/common_service/common_service.dart';
import 'resource/connectivity/check_connectivity.dart';
import '../features/booking_page/data/repositories/booking_repository_implements.dart';
import '../features/categories_page/data/models/get_category_model.dart';
import '../features/categories_page/data/models/get_my_service_model.dart';
import '../features/category_services_page/data/models/get_service_model.dart';
import '../features/categories_page/data/repositories/categories_page_implements_repository.dart';
import 'resource/common_entity/service_entity.dart';
import '../features/categories_page/domain/repositories/categories_page_repository.dart';
import '../features/categories_page/domain/usecases/get_category_usecase.dart';
import '../features/category_services_page/data/repositories/category_Services_repository_implements.dart';
import '../features/category_services_page/domain/repositories/category_services_repository.dart';
import '../features/category_services_page/domain/usecases/delete_service_usecase.dart';
import '../features/category_services_page/domain/usecases/get_services_usecase.dart';
import '../features/category_services_page/domain/usecases/set_service_usecase.dart';
import '../features/category_services_page/domain/usecases/update_service_usecase.dart';
import '../features/category_services_page/presentation/bloc/category_services_bloc.dart';
import '../features/category_services_page/presentation/bloc/set_service_bloc.dart';
import '../features/home_page/data/models/home_page_model.dart';
import '../features/home_page/data/repositories/home_page_repository_implements.dart';
import '../features/home_page/domain/entities/home_page_entity.dart';
import '../features/home_page/domain/repositories/home_page_repository.dart';
import '../features/home_page/presentation/bloc/home_page_bloc.dart';

import '../features/login_page/data/models/login_model.dart';
import '../features/login_page/data/models/login_state_model.dart';
import '../features/login_page/domain/entities/login_state_entity.dart';
import '../features/login_page/domain/repositories/login_repository.dart';
import '../features/login_page/domain/usecases/login_usecase.dart';
import '../features/login_page/presentation/bloc/login_bloc_bloc.dart';
import '../features/my_services_page/data/repositories/my_service_repository_implements.dart';
import '../features/my_services_page/domain/repositories/my_services_repository.dart';
import '../features/my_services_page/domain/usecases/my_service_usecase.dart';
import '../features/my_services_page/presentation/bloc/my_service_bloc.dart';
import '../features/otp_page/data/models/otp_model.dart';
import '../features/otp_page/domain/repositories/otp_verifiy_repository.dart';
import '../features/otp_page/domain/usecases/otp_resend_usecase.dart';
import '../features/otp_page/domain/usecases/otp_verify_usecase.dart';
import '../features/otp_page/presentation/bloc/otp_page_bloc.dart';
import '../features/profile_page/data/models/set_profile_model.dart';
import '../features/profile_page/domain/usecases/get_languages_usecase.dart';
import '../features/profile_page/domain/usecases/get_working_time_usecase.dart';
import '../features/profile_page/domain/usecases/logout_usecase.dart';
import '../features/profile_page/domain/usecases/set_working_time_usecase.dart';
import '../features/refresh_token/domain/entities/token_entity.dart';
import '../features/refresh_token/domain/repositories/refresh_token_repository.dart';
import '../features/refresh_token/domain/usecases/refresh_token_usecase.dart';
import '../features/refresh_token/presentation/bloc/refresh_token_bloc.dart';
import '../features/signup_page/data/models/city_model.dart';
import '../features/signup_page/data/models/country_model.dart';
import '../features/signup_page/data/models/signup_model.dart';
import '../features/signup_page/data/repositories/get_cities_repository_implements.dart';
import '../features/signup_page/data/repositories/get_country_repository_implement.dart';
import '../features/signup_page/data/repositories/get_position_repository_implements.dart';
import '../features/signup_page/data/repositories/signup_repository_implements.dart';
import '../features/signup_page/domain/entities/city_entity.dart';
import '../features/signup_page/domain/entities/country_entity.dart';
import '../features/signup_page/domain/entities/otp_entity.dart';
import '../features/signup_page/domain/entities/position_entity.dart';
import '../features/signup_page/domain/entities/signup_entity.dart';
import '../features/signup_page/domain/repositories/get_cities_repository.dart';
import '../features/signup_page/domain/repositories/get_country_repository.dart';
import '../features/signup_page/domain/repositories/get_position_repository.dart';
import '../features/signup_page/domain/repositories/signup_repository.dart';
import '../features/signup_page/domain/usecases/get_cities_usecase.dart';
import '../features/signup_page/domain/usecases/get_country_usecase.dart';
import '../features/signup_page/domain/usecases/get_position_usecase.dart';
import '../features/signup_page/domain/usecases/signup_usecase.dart';
import '../features/signup_page/presentation/bloc/get_cities_bloc.dart';
import '../features/signup_page/presentation/bloc/get_countries_bloc.dart';
import '../features/signup_page/presentation/bloc/get_position_bloc.dart';
import '../features/signup_page/presentation/bloc/signup_bloc_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../config/app/app_preferences.dart';
import '../features/booking_page/data/models/get_booking_model.dart';
import '../features/booking_page/domain/entities/booking_entity.dart';
import '../features/booking_page/domain/repositories/booking_repository.dart';
import '../features/booking_page/domain/usecases/get_booking_usecase.dart';
import '../features/booking_page/domain/usecases/set_booking_usecase.dart';
import '../features/booking_page/presentation/bloc/get_booking_bloc.dart';
import '../features/booking_page/presentation/bloc/set_booking_bloc.dart';
import '../features/categories_page/presentation/bloc/categories_page_bloc.dart';
import '../features/categories_page/domain/entities/category_entity.dart';
import '../features/home_page/domain/usecases/home_page_usecase.dart';
import '../features/login_page/data/repositories/login_repository_implements.dart';
import '../features/otp_page/data/repositories/otp_verify_repository_implements.dart';
import '../features/profile_page/data/models/profile_model.dart';
import '../features/profile_page/data/models/set_working_hours_model.dart';
import '../features/profile_page/data/repositories/profile_repository_implements.dart';
import '../features/profile_page/domain/entities/profile_entity.dart';
import '../features/profile_page/domain/entities/working_hours_entity.dart';
import '../features/profile_page/domain/repositories/profile_repository.dart';
import '../features/profile_page/domain/usecases/get_profile_usecase.dart';
import '../features/profile_page/domain/usecases/set_languages_usecase.dart';
import '../features/profile_page/domain/usecases/update_profile_usecase.dart';
import '../features/profile_page/domain/usecases/update_working_time_usecase.dart';
import '../features/profile_page/presentation/bloc/get_profile_bloc.dart';
import '../features/profile_page/presentation/bloc/get_working_time_bloc.dart';
import '../features/profile_page/presentation/bloc/languges_bloc.dart';
import '../features/refresh_token/data/repositories/refresh_token_repository_implements.dart';

GetIt getItInstance = GetIt.instance;
Future<void> initDependencies() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  getItInstance.registerFactory<AppPreferences>(
    () => AppPreferences(sharedPreferences),
  );
  //common services and utilities
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
  getItInstance.registerSingleton<OtpModel>(OtpModel());
  getItInstance.registerSingleton<OtpEntity>(OtpEntity());
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
  getItInstance.registerSingleton<OtpVerifyRepository>(
    OtpVerifyRepositoryImplements(
      commonService: getItInstance(),
      checkConnectivity: getItInstance(),
    ),
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
  getItInstance.registerSingleton<OtpVerifyUsecase>(
    OtpVerifyUsecase(otpVerifyRepository: getItInstance()),
  );
  getItInstance.registerSingleton<OtpResendUseCase>(
    OtpResendUseCase(otpVerifyRepository: getItInstance()),
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
  getItInstance.registerFactory<OtpPageBloc>(
    () => OtpPageBloc(getItInstance(), getItInstance()),
  );
  // end of signup
  // refresh token
  //models and entities
  getItInstance.registerSingleton<TokenEntity>(TokenEntity());

  //repository
  getItInstance.registerSingleton<RefreshTokenRepository>(
    RefreshTokenRepositoryImplements(
      commonService: getItInstance(),
      checkConnectivity: getItInstance(),
    ),
  );

  //use case
  getItInstance.registerSingleton<RefreshTokenUsecase>(
    RefreshTokenUsecase(refreshTokenRepository: getItInstance()),
  );

  //bloc
  getItInstance.registerFactory<RefreshTokenBloc>(
    () => RefreshTokenBloc(getItInstance()),
  );

  // end of refresh token
  // categories page
  //models and entities
  getItInstance.registerSingleton<CategoryEntity>(CategoryEntity());
  getItInstance.registerSingleton<ServiceEntity>(ServiceEntity());
  getItInstance.registerSingleton<GetCategoryModel>(GetCategoryModel());
  getItInstance.registerSingleton<GetMyServiceModel>(GetMyServiceModel());
  getItInstance.registerSingleton<GetServiceModel>(GetServiceModel());
  //repository
  getItInstance.registerSingleton<CategoriesPageRepository>(
    CategoriesPageImplementsRepository(checkConnectivity: getItInstance()),
  );
  getItInstance.registerSingleton<CategoryServicesRepository>(
    CategoryServicesRepositoryImplements(checkConnectivity: getItInstance()),
  );
  //use case
  getItInstance.registerSingleton<GetCategoryUsecase>(
    GetCategoryUsecase(categoriesPageRepository: getItInstance()),
  );
  getItInstance.registerSingleton<GetServicesUsecase>(
    GetServicesUsecase(categoryServicesRepository: getItInstance()),
  );
  getItInstance.registerSingleton<SetServiceUseCase>(
    SetServiceUseCase(categoryServicesRepository: getItInstance()),
  );
  getItInstance.registerSingleton<UpdateServiceUsecase>(
    UpdateServiceUsecase(categoryServicesRepository: getItInstance()),
  );
  getItInstance.registerSingleton<DeleteServiceUsecase>(
    DeleteServiceUsecase(categoryServicesRepository: getItInstance()),
  );
  //bloc
  getItInstance.registerFactory<CategoriesPageBloc>(
    () => CategoriesPageBloc(getItInstance(), getItInstance()),
  );
  getItInstance.registerFactory<CategoryServicesBloc>(
    () => CategoryServicesBloc(getItInstance(), getItInstance()),
  );
  getItInstance.registerFactory<SetServiceBloc>(
    () => SetServiceBloc(
      getItInstance(),
      getItInstance(),
      getItInstance(),
      getItInstance(),
    ),
  );
  // end of categories page
  // my services

  //repository
  getItInstance.registerSingleton<MyServicesRepository>(
    MyServiceRepositoryImplements(checkConnectivity: getItInstance()),
  );

  //use case
  getItInstance.registerSingleton<MyServiceUsecase>(
    MyServiceUsecase(myServicesRepository: getItInstance()),
  );

  //bloc
  getItInstance.registerFactory<MyServiceBloc>(
    () => MyServiceBloc(getItInstance(), getItInstance()),
  );

  // end of refresh token
  // booking page
  //models and entities
  getItInstance.registerSingleton<BookingEntity>(BookingEntity());
  getItInstance.registerSingleton<GetBookingModel>(GetBookingModel());
  //repository
  getItInstance.registerSingleton<BookingRepository>(
    BookingRepositoryImpl(getItInstance()),
  );
  //use case
  getItInstance.registerSingleton<GetBookingUsecase>(
    GetBookingUsecase(getItInstance()),
  );
  getItInstance.registerSingleton<SetBookingUsecase>(
    SetBookingUsecase(getItInstance()),
  );
  //bloc
  getItInstance.registerFactory<GetBookingBloc>(
    () => GetBookingBloc(getItInstance(), getItInstance()),
  );

  getItInstance.registerFactory<SetBookingBloc>(
    () => SetBookingBloc(getItInstance(), getItInstance()),
  );
  // end of booking page
  // profile page
  //entities and models
  getItInstance.registerSingleton<WorkingHoursEntity>(WorkingHoursEntity());
  getItInstance.registerSingleton<SetWorkingHoursModel>(SetWorkingHoursModel());
  getItInstance.registerSingleton<ProfileEntity>(ProfileEntity());
  getItInstance.registerSingleton<ProfileModel>(ProfileModel());
  getItInstance.registerSingleton<SetProfileModel>(SetProfileModel());
  //repository
  getItInstance.registerSingleton<ProfileRepository>(
    ProfileRepositoryImplements(getItInstance()),
  );
  //usecase
  getItInstance.registerSingleton<GetProfileUseCase>(
    GetProfileUseCase(getItInstance()),
  );
  getItInstance.registerSingleton<GetWorkingTimeUseCase>(
    GetWorkingTimeUseCase(getItInstance()),
  );
  getItInstance.registerSingleton<SetWorkingTimeUseCase>(
    SetWorkingTimeUseCase(getItInstance()),
  );
  getItInstance.registerSingleton<UpdateWorkingTimeUseCase>(
    UpdateWorkingTimeUseCase(getItInstance()),
  );
  getItInstance.registerSingleton<LogoutUseCase>(
    LogoutUseCase(getItInstance()),
  );
  getItInstance.registerSingleton<GetLanguagesUseCase>(
    GetLanguagesUseCase(getItInstance()),
  );
  getItInstance.registerSingleton<SetLanguagesUseCase>(
    SetLanguagesUseCase(getItInstance()),
  );

  getItInstance.registerSingleton<UpdateProfileUsecase>(
    UpdateProfileUsecase(getItInstance()),
  );
  //bloc
  getItInstance.registerFactory<GetProfileBloc>(
    () => GetProfileBloc(
      getItInstance(),
      getItInstance(),
      getItInstance(),
      getItInstance(),
    ),
  );
  getItInstance.registerFactory<GetWorkingTimeBloc>(
    () => GetWorkingTimeBloc(
      getItInstance(),
      getItInstance(),
      getItInstance(),
      getItInstance(),
    ),
  );
  getItInstance.registerFactory<LangugesBloc>(
    () => LangugesBloc(getItInstance(), getItInstance(), getItInstance()),
  );
  // end of profile page
  // home page
  //entities and models
  getItInstance.registerSingleton<HomePageEntity>(HomePageEntity());
  getItInstance.registerSingleton<HomePageModel>(HomePageModel());

  //repository
  getItInstance.registerSingleton<HomePageRepository>(
    HomePageRepositoryImpl(getItInstance()),
  );
  //usecase
  getItInstance.registerSingleton<HomePageUseCase>(
    HomePageUseCase(getItInstance()),
  );

  //bloc
  getItInstance.registerFactory<HomePageBloc>(
    () => HomePageBloc(getItInstance(), getItInstance()),
  );

  // end of home page
}
