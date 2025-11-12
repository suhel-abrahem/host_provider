import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:hosta_provider/config/theme/app_theme.dart';
import 'package:hosta_provider/core/constants/font_constants.dart';
import 'package:hosta_provider/core/dependencies_injection.dart';
import 'package:hosta_provider/core/resource/common_state_widget/error_state_widget.dart';
import 'package:hosta_provider/core/resource/common_state_widget/no_data_state_widget.dart';
import 'package:hosta_provider/core/resource/common_state_widget/no_internet_state_widget.dart';
import 'package:hosta_provider/core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import 'package:hosta_provider/core/resource/main_page/main_page.dart';
import 'package:hosta_provider/core/util/helper/helper.dart';
import 'package:hosta_provider/features/profile_page/data/models/profile_model.dart';
import 'package:hosta_provider/features/profile_page/domain/entities/profile_entity.dart';
import 'package:hosta_provider/features/profile_page/presentation/bloc/get_profile_bloc.dart';
import 'package:hosta_provider/features/profile_page/presentation/widgets/account_info_row_widget.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

class AccountPagePage extends StatefulWidget {
  const AccountPagePage({super.key});

  @override
  State<AccountPagePage> createState() => _AccountPagePageState();
}

class _AccountPagePageState extends State<AccountPagePage> {
  ProfileModel profileModel = ProfileModel();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void didChangeDependencies() {
    profileModel = profileModel.copyWith(
      acceptLanguage: Helper.getCountryCode(context),
    );
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return MainPage(
      title: LocaleKeys.profilePage_account.tr(),
      body: BlocProvider<GetProfileBloc>(
        create: (context) =>
            getItInstance<GetProfileBloc>()
              ..add(GetProfileEvent.getProfile(profileModel: profileModel)),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: 20.w,
                vertical: 20.h,
              ),
              child: Text(
                LocaleKeys.profilePage_myAccount.tr(),
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontFamily: FontConstants.fontFamily(context.locale),
                ),
              ),
            ),
            BlocBuilder<GetProfileBloc, GetProfileState>(
              builder: (context, state) {
                return state.when(
                  initial: () => ErrorStateWidget(),
                  loading: () => Center(child: CircularProgressIndicator()),
                  loaded: (data) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child:
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 16.h,
                          ),
                          child: Form(
                            key: formKey,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //name
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 4.w,
                                        vertical: 4.h,
                                      ),
                                      child: Icon(
                                        Icons.person_outline_outlined,
                                        size: 24.r,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.primary,
                                      ),
                                    ).asGlass(
                                      frosted: true,
                                      blurX: 18,
                                      blurY: 18,
                                      tintColor: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withValues(alpha: 0.9),
                                      clipBorderRadius: BorderRadius.circular(
                                        12.r,
                                      ),
                                      border: Theme.of(
                                        context,
                                      ).defaultBorderSide,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12.w,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${LocaleKeys.profilePage_name.tr()}:",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                  fontFamily:
                                                      FontConstants.fontFamily(
                                                        context.locale,
                                                      ),
                                                ),
                                          ),
                                          Text(
                                            data?.name ?? "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                  fontFamily:
                                                      FontConstants.fontFamily(
                                                        context.locale,
                                                      ),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ), //email

                                Padding(
                                  padding: EdgeInsets.only(top: 12.h),
                                  child: AccountInfoRowWidget(
                                    onChanged: (value) {},
                                    validator: (value) => null,
                                    profileEntity: data?.email,
                                    iconData: Icons.email_outlined,
                                    label: LocaleKeys.profilePage_email.tr(),
                                  ),
                                ),
                                //phone
                                AccountInfoRowWidget(
                                  onChanged: (value) {},
                                  validator: (value) => null,
                                  profileEntity: data?.phone,
                                  iconData: Icons.phone_outlined,
                                  label: LocaleKeys.profilePage_phone.tr(),
                                ),
                                //city
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 12.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 4.w,
                                          vertical: 4.h,
                                        ),
                                        child: Icon(
                                          Icons.person_outline_outlined,
                                          size: 24.r,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.primary,
                                        ),
                                      ).asGlass(
                                        frosted: true,
                                        blurX: 18,
                                        blurY: 18,
                                        tintColor: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withValues(alpha: 0.9),
                                        clipBorderRadius: BorderRadius.circular(
                                          12.r,
                                        ),
                                        border: Theme.of(
                                          context,
                                        ).defaultBorderSide,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.w,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${LocaleKeys.profilePage_city.tr()}:",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall
                                                  ?.copyWith(
                                                    fontFamily:
                                                        FontConstants.fontFamily(
                                                          context.locale,
                                                        ),
                                                  ),
                                            ),
                                            Text(
                                              data
                                                      ?.addresses
                                                      ?.first?["city"]?["name"] ??
                                                  "",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelMedium
                                                  ?.copyWith(
                                                    fontFamily:
                                                        FontConstants.fontFamily(
                                                          context.locale,
                                                        ),
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                //address
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 4.w,
                                        vertical: 4.h,
                                      ),
                                      child: Icon(
                                        Icons.person_outline_outlined,
                                        size: 24.r,
                                        color: Theme.of(
                                          context,
                                        ).colorScheme.primary,
                                      ),
                                    ).asGlass(
                                      frosted: true,
                                      blurX: 18,
                                      blurY: 18,
                                      tintColor: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withValues(alpha: 0.9),
                                      clipBorderRadius: BorderRadius.circular(
                                        12.r,
                                      ),
                                      border: Theme.of(
                                        context,
                                      ).defaultBorderSide,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 12.w,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${LocaleKeys.profilePage_address.tr()}:",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelSmall
                                                ?.copyWith(
                                                  fontFamily:
                                                      FontConstants.fontFamily(
                                                        context.locale,
                                                      ),
                                                ),
                                          ),
                                          Text(
                                            data
                                                    ?.addresses
                                                    ?.first?["address"] ??
                                                "",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium
                                                ?.copyWith(
                                                  fontFamily:
                                                      FontConstants.fontFamily(
                                                        context.locale,
                                                      ),
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ).asGlass(
                          frosted: true,
                          blurX: 8,
                          blurY: 8,
                          tintColor: Theme.of(
                            context,
                          ).colorScheme.primaryContainer.withValues(alpha: 0.9),
                          clipBorderRadius: BorderRadius.circular(12.r),
                          border: Theme.of(context).defaultBorderSide,
                        ),
                  ),
                  error: (error) => ErrorStateWidget(),
                  noInternet: () => NoInternetStateWidget(),
                  noData: () => NodataStateWidget(),
                  unauthorized: () => ErrorStateWidget(),
                );
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child:
                  Container(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 16.w,
                      vertical: 16.h,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.language_outlined,
                              size: 24.r,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            Text(
                              LocaleKeys.profilePage_languagesIspeak.tr(),
                              style: Theme.of(context).textTheme.labelMedium
                                  ?.copyWith(
                                    fontFamily: FontConstants.fontFamily(
                                      context.locale,
                                    ),
                                  ),
                            ),
                            SizedBox(
                              width: 40.w,
                              height: 40.h,
                              child: ElevatedButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                style: Theme.of(context)
                                    .elevatedButtonTheme
                                    .style
                                    ?.copyWith(
                                      backgroundColor: WidgetStatePropertyAll(
                                        Colors.transparent,
                                      ),
                                      shadowColor: WidgetStatePropertyAll(
                                        Colors.transparent,
                                      ),
                                      padding: WidgetStatePropertyAll(
                                        EdgeInsets.zero,
                                      ),
                                    ),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 4.w,
                                    vertical: 4.h,
                                  ),
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Icon(
                                      Icons.edit_outlined,
                                      size: 20.sp,
                                      color: Theme.of(
                                        context,
                                      ).colorScheme.onPrimaryContainer,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ).asGlass(
                    frosted: true,
                    blurX: 18,
                    blurY: 18,
                    tintColor: Theme.of(
                      context,
                    ).colorScheme.primary.withValues(alpha: 0.9),
                    clipBorderRadius: BorderRadius.circular(12.r),
                    border: Theme.of(context).defaultBorderSide,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
