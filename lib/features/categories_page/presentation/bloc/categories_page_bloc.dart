import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'categories_page_event.dart';
part 'categories_page_state.dart';

class CategoriesPageBloc extends Bloc<CategoriesPageEvent, CategoriesPageState> {
  CategoriesPageBloc() : super(CategoriesPageInitial()) {
    on<CategoriesPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
