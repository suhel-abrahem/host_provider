import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:hosta_provider/core/enums/assets_type_enum.dart';
import 'package:hosta_provider/core/resource/assets_manager.dart';
import 'package:lottie/lottie.dart';

import '../../../generated/locale_keys.g.dart';

class NodataStateWidget extends StatelessWidget {
  const NodataStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LottieBuilder.asset(
          getAssetsPath(
            assetsName: LottiesName.noData,
            assetsType: AssetsType.lotties,
          ),
        ),
        Text(LocaleKeys.common_noThingToShow.tr()),
      ],
    );
  }
}
