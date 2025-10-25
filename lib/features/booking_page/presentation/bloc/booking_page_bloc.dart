import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'booking_page_event.dart';
part 'booking_page_state.dart';

class BookingPageBloc extends Bloc<BookingPageEvent, BookingPageState> {
  BookingPageBloc() : super(BookingPageInitial()) {
    on<BookingPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
