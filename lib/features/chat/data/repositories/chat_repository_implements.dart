import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import '/core/constants/api_constant.dart';
import '/core/data_state/data_state.dart';
import '/core/resource/common_service/common_service.dart';
import '/core/resource/connectivity/check_connectivity.dart';

import '/features/chat/data/models/chat_model.dart';

import '/features/chat/domain/entities/chat/chat_entity.dart';

import '/features/chat/domain/entities/chats/chats_entity.dart';
import '/features/chat/domain/entities/message/message_entity.dart';

import '../../domain/repositories/chat_repository.dart';

class ChatRepositoryImplements implements ChatRepository {
  final CheckConnectivity checkConnectivity;
  ChatRepositoryImplements(this.checkConnectivity);
  @override
  Future<DataState<ChatEntity?>?> getChatDetails(ChatModel? chatModel) async {
    ConnectivityResult? connectivityResult;
    DataState<ChatEntity?>? dataState;
    await checkConnectivity.checkConnectivity().then((value) {
      connectivityResult = value.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    }
    CommonService commonService = CommonService(
      headers: {
        "Accept-Language": chatModel?.acceptLanguage ?? "",
        "Authorization": "Bearer ${chatModel?.authToken ?? ""}",
      },
    );
    try {
      await commonService
          .get("${ApiConstant.chatEndpoint}/${chatModel?.id ?? 0}")
          .then((response) {
            print("GetChatDetails Response: ${response.data?.data?['data']}");
            if (response is DataSuccess) {
              dataState = DataSuccess(
                data: ChatEntity.fromJson(response.data?.data?['data']),
              );
              return dataState;
            } else if (response is UnauthenticatedDataState) {
              dataState = UnauthenticatedDataState(
                error: response.error ?? "Error",
              );
              return dataState;
            } else if (response is DataError) {
              dataState = DataError(error: response.error ?? "Error");
              return dataState;
            } else {
              dataState = DataFailed(error: "Something went wrong");
              return dataState;
            }
          });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    return dataState;
  }

  @override
  Future<DataState<List<ChatsEntity?>?>?> getChats(ChatModel? chatModel) async {
    ConnectivityResult? connectivityResult;
    DataState<List<ChatsEntity?>?>? dataState;
    await checkConnectivity.checkConnectivity().then((value) {
      connectivityResult = value.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    }
    CommonService commonService = CommonService(
      headers: {
        "Accept-Language": chatModel?.acceptLanguage ?? "",
        "Authorization": "Bearer ${chatModel?.authToken ?? ""}",
        "accept": "application/json",
      },
    );
    try {
      await commonService.get(ApiConstant.chatEndpoint).then((response) {
        if (response is DataSuccess) {
          dataState = DataSuccess(
            data: (response.data?.data['data'] as List)
                .map((e) => ChatsEntity.fromJson(e))
                .toList(),
          );
          return dataState;
        } else if (response is UnauthenticatedDataState) {
          dataState = UnauthenticatedDataState(
            error: response.error ?? "Error",
          );
          return dataState;
        } else if (response is DataError) {
          dataState = DataError(error: response.error ?? "Error");
          return dataState;
        } else {
          dataState = DataFailed(
            error: response.error ?? "Something went wrong",
          );
          return dataState;
        }
      });
    } catch (e) {
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    return dataState;
  }

  @override
  Future<DataState<MessageEntity?>?> sendMessage(ChatModel? chatModel) async {
    ConnectivityResult? connectivityResult;
    DataState<MessageEntity?>? dataState;
    await checkConnectivity.checkConnectivity().then((value) {
      connectivityResult = value.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    }
    print("SendMessage ChatModel: $chatModel");
    try {
      final dataForm = FormData();
      dataForm.fields.add(
        MapEntry('conversation_id', chatModel?.id.toString() ?? '0'),
      );

      if (chatModel?.attachments == null ||
          (chatModel!.attachments?.isEmpty == true)) {
        print("Adding text content: ${chatModel?.content}");
        dataForm.fields.add(MapEntry('content', chatModel?.content ?? ""));
      } else {
        print("Adding file attachments");
        for (var file in chatModel.attachments ?? []) {
          String fileName = file.path.split('/').last;
          dataForm.files.add(
            MapEntry(
              'files[]',
              await MultipartFile.fromFile(file.path, filename: fileName),
            ),
          );
        }
      }
      print("api headers: ${chatModel?.authToken}");
      CommonService commonService = CommonService(
        headers: {"Authorization": "Bearer ${chatModel?.authToken ?? ""}"},
      );
      print("SendMessage Request: ${dataForm.fields} ");

      await commonService
          .post(
            ApiConstant.sendMessageEndpoint,
            data: dataForm,
            options: Options(contentType: 'multipart/form-data'),
          )
          .then((response) {
            print("SendMessage Response: ${response.data?.data}");
            if (response is DataSuccess) {
              dataState = DataSuccess(
                data: MessageEntity.fromJson(response.data?.data['data']),
              );
              return dataState;
            } else if (response is UnauthenticatedDataState) {
              dataState = UnauthenticatedDataState(
                error: response.error ?? "Error",
              );
              return dataState;
            } else if (response is DataError) {
              dataState = DataError(error: response.error ?? "Error");
              return dataState;
            } else {
              dataState = DataFailed(
                error: response.error ?? "Something went wrong",
              );
              print("SendMessage Error: ${dataState?.error}");
              return dataState;
            }
          });
    } catch (e) {
      print("SendMessage Exception: $e");
      dataState = DataFailed(error: e.toString());
      return dataState;
    }
    print("SendMessage DataState: $dataState");
    return dataState;
  }
}
