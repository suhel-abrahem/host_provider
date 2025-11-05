part of 'categories_page_bloc.dart';

@freezed
class CategoriesPageEvent with _$CategoriesPageEvent {
  const factory CategoriesPageEvent.started() = CategoriesPageEventStarted;
  const factory CategoriesPageEvent.get(GetCategoryModel? getCategoryModel) =
      CategoriesPageEventGet;
}
