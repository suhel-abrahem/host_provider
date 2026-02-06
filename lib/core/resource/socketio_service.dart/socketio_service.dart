import '/core/data_state/data_state.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/refresh_token/data/models/refresh_token_model.dart';

import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../../../config/app/app_preferences.dart';
import '../../../features/refresh_token/domain/usecases/refresh_token_usecase.dart';
import '../../dependencies_injection.dart';

class SocketService {
  IO.Socket? _socket;

  bool get isConnected => _socket?.connected ?? false;

  void connect() {
    if (isConnected) return;

    _socket = IO.io(
      'https://hosta-api.lenda-agency.com',
      IO.OptionBuilder()
          .setPath('/socket.io/')
          .setTransports(['websocket'])
          .enableForceNew()
          .enableReconnection()
          .enableAutoConnect()
          .build(),
    );

    _socket?.connect();

    _socket?.onConnect((_) async {
      print('✅ Socket connected');

      LoginStateEntity? loginState = getItInstance<AppPreferences>()
          .getUserInfo();
      await getItInstance<RefreshTokenUsecase>()
          .call(
            params: RefreshTokenModel(
              token: loginState?.access_token ?? "",
              refresh_token: loginState?.refresh_token ?? "",
            ),
          )
          .then((onValue) {
            if (onValue is DataSuccess) {
              print("user id form socket: ${loginState?.user['id']}");
              print('🔑 Socket authentication emitted');
              _socket?.emit('authenticate', {
                'userId': loginState?.user['id'],
                'token': onValue?.data?.access_token,
              });
            }
          });
    });

    _socket!.onDisconnect((_) {
      print('❌ Socket disconnected');
    });

    _socket!.onConnectError((err) {
      print('⛔ connect_error: $err');
    });

    _socket!.onAny((event, data) {
      print('📡 [$event] => $data');
    });
  }

  void on({required String event, required Function(dynamic data) callback}) {
    _socket?.on(event, callback);
  }

  void emit(String event, dynamic data) {
    _socket?.emit(event, data);
  }

  void off(String event) {
    _socket?.off(event);
  }

  void disconnect() {
    _socket?.disconnect();
    _socket?.dispose();
    _socket = null;
  }
}
