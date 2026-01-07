import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '/core/constants/font_constants.dart';

import '../../../../generated/locale_keys.g.dart';

class DeleteAccountWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const DeleteAccountWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      child: Center(
        child: Text(
          LocaleKeys.profilePage_deleteAccount.tr(),
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Colors.white,
            fontFamily: FontConstants.fontFamily(context.locale),
          ),
        ),
      ),
    );
  }
}
