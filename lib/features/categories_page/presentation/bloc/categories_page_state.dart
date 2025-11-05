part of 'categories_page_bloc.dart';

@freezed
class CategoriesPageState with _$CategoriesPageState {
  const factory CategoriesPageState.initial() = CategoriesPageStateInitial;
  const factory CategoriesPageState.error() = CategoriesPageStateError;
  const factory CategoriesPageState.noInternet() =
      CategoriesPageStateNoInternet;
  const factory CategoriesPageState.unAuthorized() =
      CategoriesPageStateUnAuthorized;
  const factory CategoriesPageState.loading() = CategoriesPageStateLoading;
  const factory CategoriesPageState.got(List<CategoryEntity?>? categoryEntity) =
      CategoriesPageStateGot;
}
