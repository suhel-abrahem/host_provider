import 'package:hosta_provider/core/data_state/data_state.dart';

import 'package:hosta_provider/features/profile_page/data/models/profile_model.dart';

import 'package:hosta_provider/features/profile_page/data/models/set_time_off_model.dart';

import 'package:hosta_provider/features/profile_page/data/models/set_working_hours_model.dart';

import 'package:hosta_provider/features/profile_page/domain/entities/profile_entity.dart';

import 'package:hosta_provider/features/profile_page/domain/entities/time_of_entity.dart';

import 'package:hosta_provider/features/profile_page/domain/entities/working_hours_entity.dart';

import '../../domain/repositories/profile_repository.dart';

class ProfileRepositoryImplements implements ProfileRepository {
  @override
  Future<DataState<ProfileEntity?>?> getProfile(ProfileModel? profileModel) {
    // TODO: implement getProfile
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<TimeOfEntity?>?>?> getTimeOff(
    ProfileModel? profileModel,
  ) {
    // TODO: implement getTimeOff
    throw UnimplementedError();
  }

  @override
  Future<DataState<List<WorkingHoursEntity?>?>?> getWorkingHours(
    ProfileModel? profileModel,
  ) {
    // TODO: implement getWorkingHours
    throw UnimplementedError();
  }

  @override
  Future<DataState<void>?> logout(ProfileModel? profileModel) {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<DataState<TimeOfEntity>?> setTimeOff(SetTimeOffModel? timeOfModel) {
    // TODO: implement setTimeOff
    throw UnimplementedError();
  }

  @override
  Future<DataState<WorkingHoursEntity?>?> setWorkingHours(
    SetWorkingHoursModel? profileModel,
  ) {
    // TODO: implement setWorkingHours
    throw UnimplementedError();
  }

  @override
  Future<DataState<ProfileEntity?>?> updateProfile(ProfileModel? profileModel) {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

  @override
  Future<DataState<WorkingHoursEntity?>?> updateWorkingHours(
    SetWorkingHoursModel? profileModel,
  ) {
    // TODO: implement updateWorkingHours
    throw UnimplementedError();
  }
}
