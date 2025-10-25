import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

class CategoriesPagePage extends StatefulWidget {
  const CategoriesPagePage({super.key});

  @override
  State<CategoriesPagePage> createState() => _CategoriesPagePageState();
}

class _CategoriesPagePageState extends State<CategoriesPagePage> {
  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: LocaleKeys.categoriesPage_title.tr(),
      body: ListView(),
    );
  }
}
