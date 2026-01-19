import 'package:connectivity_plus/connectivity_plus.dart'
    show ConnectivityResult;
import 'package:dio/dio.dart';
import '../../../../../core/constants/api_constant.dart';
import '../../../domain/entities/help/ticket_entity.dart';
import '../../../domain/entities/help/tickets_entity.dart';
import '../../../domain/repositories/help/tickets_repository.dart';
import '/core/data_state/data_state.dart';
import '/core/resource/common_service/common_service.dart';
import '/core/resource/connectivity/check_connectivity.dart';
import '/features/chat/domain/entities/message/message_entity.dart';

import '/features/profile_page/data/models/help/create_ticket_model.dart';

import '/features/profile_page/data/models/help/get_tickets_model.dart';
import '/features/profile_page/data/models/help/send_ticket_message_model.dart';

class TicketRepositoryImplements implements TicketsRepository {
  final CheckConnectivity _connectivity;
  TicketRepositoryImplements(this._connectivity);
  @override
  Future<DataState<TicketsEntity?>?> createTicket(
    CreateTicketModel? model,
  ) async {
    ConnectivityResult connectivityResult = ConnectivityResult.none;
    DataState<TicketsEntity?>? dataState;
    try {
      await _connectivity.checkConnectivity().then((onValue) {
        connectivityResult = onValue.last;
      });
    } catch (e) {
      dataState = NOInternetDataState();
      return dataState;
    }
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    }
    try {
      final CommonService commonService = CommonService(
        headers: {
          "Authorization": "Bearer ${model?.token}",
          "accept-language": model?.accepted_language ?? "ar",
          "Content-Type": "application/json",
        },
      );

      print({
        "subject": model?.subject,
        "category": model?.category,
        "priority": model?.priority,
        "initial_message": model?.initial_message,
      });
      await commonService
          .post(
            "${ApiConstant.ticketsEndpoint}",
            data: {
              "subject": model?.subject,
              "category": model?.category,
              "priority": model?.priority,
              "initial_message": model?.initial_message,
            },
          )
          .then((response) {
            print(response.error);
            if (response is DataSuccess) {
              dataState = DataSuccess(
                data: TicketsEntity.fromJson(response.data?.data["data"]),
              );
              return dataState;
            } else {
              dataState = DataFailed(error: response.error);
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
  Future<DataState<List<TicketsEntity?>?>?> getTickets(
    GetTicketsModel? model,
  ) async {
    ConnectivityResult connectivityResult = ConnectivityResult.none;
    DataState<List<TicketsEntity?>?>? dataState;
    try {
      await _connectivity.checkConnectivity().then((onValue) {
        connectivityResult = onValue.last;
      });
    } catch (e) {
      dataState = NOInternetDataState();
      return dataState;
    }
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    }
    try {
      final CommonService commonService = CommonService(
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer ${model?.token}",
          "accept-language": model?.accepted_language ?? "ar",
          "Content-Type": "application/json",
        },
      );
      await commonService
          .get("${ApiConstant.ticketsEndpoint}${model?.id}")
          .then((response) {
            if (response is DataSuccess) {
              dataState = DataSuccess(
                data: (response.data?.data["data"] as List)
                    .map((e) => TicketsEntity.fromJson(e))
                    .toList(),
              );
              return dataState;
            } else {
              dataState = DataFailed(error: response.error);
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
  Future<DataState<TicketEntity?>?> getTicketDetails(
    GetTicketsModel? model,
  ) async {
    ConnectivityResult connectivityResult = ConnectivityResult.none;
    DataState<TicketEntity?>? dataState;
    try {
      await _connectivity.checkConnectivity().then((onValue) {
        connectivityResult = onValue.last;
      });
    } catch (e) {
      dataState = NOInternetDataState();
      return dataState;
    }
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    }
    try {
      final CommonService commonService = CommonService(
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer ${model?.token}",
          "accept-language": model?.accepted_language ?? "ar",
          "Content-Type": "application/json",
        },
      );
      print("get ticket details ${ApiConstant.ticketsEndpoint}${model?.id}");
      await commonService
          .get("${ApiConstant.ticketsEndpoint}/${model?.id}")
          .then((response) {
            print("response get ticket details ${response}");
            if (response is DataSuccess) {
              dataState = DataSuccess(
                data: TicketEntity.fromJson(response.data?.data["data"]),
              );
              return dataState;
            } else {
              dataState = DataFailed(error: response.error);
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
  Future<DataState<MessageEntity?>?> sendTicketMessage(
    SendTicketMessageModel? model,
  ) async {
    ConnectivityResult? connectivityResult;
    DataState<MessageEntity?>? dataState;
    await _connectivity.checkConnectivity().then((value) {
      connectivityResult = value.last;
    });
    if (connectivityResult == ConnectivityResult.none) {
      dataState = NOInternetDataState();
      return dataState;
    }

    try {
      final dataForm = FormData();
      dataForm.fields.add(
        MapEntry('conversation_id', model?.ticketId.toString() ?? '0'),
      );

      if (model?.files == null || (model!.files?.isEmpty == true)) {
        print("Adding text content: ${model?.content}");
        dataForm.fields.add(MapEntry('content', model?.content ?? ""));
      } else {
        print("Adding file attachments");
        for (var file in model.files ?? []) {
          String fileName = file.path.split('/').last;
          dataForm.files.add(
            MapEntry(
              'files[]',
              await MultipartFile.fromFile(file.path, filename: fileName),
            ),
          );
        }
      }
      print("api headers: ${model?.token}");
      CommonService commonService = CommonService(
        headers: {"Authorization": "Bearer ${model?.token ?? ""}"},
      );
      print("SendMessage Request: ${dataForm.fields} ");

      await commonService
          .post(
            "${ApiConstant.ticketsEndpoint}/${model?.ticketId}/messages",
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
