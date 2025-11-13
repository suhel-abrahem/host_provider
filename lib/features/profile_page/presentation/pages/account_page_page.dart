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
import 'package:hosta_provider/features/profile_page/domain/entities/working_hours_entity.dart';
import 'package:hosta_provider/features/profile_page/presentation/bloc/get_profile_bloc.dart';
import 'package:hosta_provider/features/profile_page/presentation/bloc/get_working_time_bloc.dart';
import 'package:hosta_provider/features/profile_page/presentation/widgets/account_info_row_widget.dart';
import 'package:hosta_provider/generated/locale_keys.g.dart';

import '../widgets/day_container_widget.dart';

class AccountPagePage extends StatefulWidget {
  const AccountPagePage({super.key});

  @override
  State<AccountPagePage> createState() => _AccountPagePageState();
}

class _AccountPagePageState extends State<AccountPagePage> {
  ProfileModel profileModel = ProfileModel();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<WorkingHoursEntity?>? workingHours = [];
  bool? workingTimeWidgetCanEdit = false;
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
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
              child: BlocProvider<GetWorkingTimeBloc>(
                create: (context) => getItInstance<GetWorkingTimeBloc>()
                  ..add(
                    GetWorkingTimeEvent.getWorkingTime(
                      profileModel: profileModel,
                    ),
                  ),
                child:
                    BlocListener<GetWorkingTimeBloc, GetWorkingTimeState>(
                      listener: (context, state) {
                        state.when(
                          initial: () {},
                          loading: () {},
                          loaded: (workingHoursData) {
                            workingHours = workingHoursData;
                          },
                          error: () {},
                          noInternet: () {},
                          noData: () {},
                          unauthorized: () {},
                          updated: () {},
                          setSuccessfully: () {},
                          itemsAlreadySet: () {},
                          itemNotFound: () {},
                        );
                      },
                      child: Container(
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
                                  Icons.schedule_outlined,
                                  size: 24.r,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                Text(
                                  LocaleKeys.profilePage_workingSchedule.tr(),
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
                                      setState(() {
                                        workingTimeWidgetCanEdit =
                                            !(workingTimeWidgetCanEdit ??
                                                false);
                                      });
                                    },
                                    style: Theme.of(context)
                                        .elevatedButtonTheme
                                        .style
                                        ?.copyWith(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
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
                            BlocBuilder<
                              GetWorkingTimeBloc,
                              GetWorkingTimeState
                            >(
                              buildWhen: (prev, curr) => curr != prev,
                              builder: (context, state) {
                                if (state is GetWorkingTimeStateLoading) {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                } else {
                                  return ListView.builder(
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                          vertical: 8.h,
                                        ),
                                        child: DayContainerWidget(
                                          canEdit: workingTimeWidgetCanEdit,
                                          workingHoursEntity:
                                              workingHours?[index],
                                        ),
                                      );
                                    },
                                    itemCount: workingHours?.length ?? 0,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                  );
                                }
                              },
                            ),
                            if (workingTimeWidgetCanEdit ?? false)
                              Padding(
                                padding: EdgeInsets.only(top: 12.h),
                                child: ElevatedButton(
                                  onPressed: () {
                                    //save working time
                                  },
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Theme.of(context).colorScheme.primary,
                                        ),
                                      ),
                                  child: Text(
                                    LocaleKeys.profilePage_submit.tr(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium
                                        ?.copyWith(
                                          fontFamily: FontConstants.fontFamily(
                                            context.locale,
                                          ),
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.onPrimary,
                                        ),
                                  ),
                                ),
                              ),
                          ],
                        ),
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
            ),
          ],
        ),
      ),
    );
  }
}
