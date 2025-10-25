import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'services_page_event.dart';
part 'services_page_state.dart';

class ServicesPageBloc extends Bloc<ServicesPageEvent, ServicesPageState> {
  ServicesPageBloc() : super(ServicesPageInitial()) {
    on<ServicesPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
