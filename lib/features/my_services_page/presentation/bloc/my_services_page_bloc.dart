import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'my_services_page_event.dart';
part 'my_services_page_state.dart';

class MyServicesPageBloc extends Bloc<MyServicesPageEvent, MyServicesPageState> {
  MyServicesPageBloc() : super(MyServicesPageInitial()) {
    on<MyServicesPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
