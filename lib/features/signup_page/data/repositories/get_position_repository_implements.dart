import 'package:connectivity_plus/connectivity_plus.dart';
import '../../../../core/data_state/data_state.dart';
import '../../../../core/resource/connectivity/check_connectivity.dart';
import '../../domain/entities/position_entity.dart';
import '../../domain/repositories/get_position_repository.dart';
import 'package:geolocator/geolocator.dart';

class GetPositionRepositoryImplements implements GetPositionRepository {
  final CheckConnectivity _checkConnectivity;

  GetPositionRepositoryImplements({
    required CheckConnectivity checkConnectivity,
  }) : _checkConnectivity = checkConnectivity;
  @override
  Future<DataState<PositionEntity?>?> getPosition() async {
    bool? serviceEnabled;
    LocationPermission permission;
    ConnectivityResult? connectivityResult;
    await _checkConnectivity.checkConnectivity().then(
      (onValue) => connectivityResult = onValue.last,
    );

    if (connectivityResult == ConnectivityResult.none) {
      return NOInternetDataState();
    } else {
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (serviceEnabled) {
        permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
          return LocationPermissionDeniedDataState();
        } else if (permission == LocationPermission.deniedForever) {
          return LocationPermissionDeniedForeverDataState();
        } else {
          try {
            final currentPosition = await Geolocator.getCurrentPosition();
            return DataSuccess(
              data: PositionEntity(
                lat: currentPosition.latitude.toString(),
                long: currentPosition.longitude.toString(),
              ),
            );
          } catch (e) {
            return DataFailed(error: e.toString());
          }
        }
      } else {
        return LocationDisabledDataState();
      }
    }
  }
}
