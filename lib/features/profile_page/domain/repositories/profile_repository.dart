import '../../../../core/data_state/data_state.dart';
import '../../data/models/language_model.dart';
import '../../data/models/profile_model.dart';
import '../../data/models/set_time_off_model.dart';
import '../entities/language_entity.dart';
import '../entities/time_of_entity.dart';
import '../entities/working_hours_entity.dart';

import '../../data/models/set_working_hours_model.dart';
import '../entities/profile_entity.dart';

abstract class ProfileRepository {
  Future<DataState<ProfileEntity?>?> getProfile(ProfileModel? profileModel);
  Future<DataState<ProfileEntity?>?> updateProfile(ProfileModel? profileModel);
  Future<DataState<List<WorkingHoursEntity?>?>?> getWorkingHours(
    ProfileModel? profileModel,
  );
  Future<DataState<List<WorkingHoursEntity?>?>?> setWorkingHours(
    SetWorkingHoursModel? profileModel,
  );
  Future<DataState<List<WorkingHoursEntity?>?>?> updateWorkingHours(
    SetWorkingHoursModel? profileModel,
  );
  Future<DataState<List<TimeOfEntity?>?>?> getTimeOff(
    ProfileModel? profileModel,
  );
  Future<DataState<TimeOfEntity>?> setTimeOff(SetTimeOffModel? timeOfModel);
  Future<DataState<void>?> logout(ProfileModel? profileModel);
  Future<DataState<List<LanguageEntity?>?>?> getLanguages(
    LanguageModel? languageModel,
  );
  Future<DataState<List<LanguageEntity?>?>?> updateLanguage(
    LanguageModel? languageModel,
  );
}
