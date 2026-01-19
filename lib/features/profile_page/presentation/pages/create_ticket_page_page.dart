import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glass/glass.dart';
import 'package:go_router/go_router.dart';
import '/core/dependencies_injection.dart';
import '/core/enums/login_state_enum.dart';
import '/core/resource/custom_widget/dropdown/drop_down_with_label.dart';
import '/core/resource/custom_widget/snake_bar_widget/snake_bar_widget.dart';
import '/core/util/helper/helper.dart';
import '/features/login_page/domain/entities/login_state_entity.dart';
import '/features/profile_page/data/models/help/create_ticket_model.dart';
import '/features/profile_page/presentation/bloc/tickets_bloc_bloc.dart';
import '../../../../config/app/app_preferences.dart';
import '../../../../config/theme/app_theme.dart';
import '../../../../core/constants/font_constants.dart';
import '../../../../core/enums/psition_enum.dart';
import '../../../../core/resource/custom_widget/custom_input_field/custom_input_field.dart';
import '../../../../core/resource/main_page/main_page.dart';
import '../../../../generated/locale_keys.g.dart';

class TicketCreationPage extends StatefulWidget {
  const TicketCreationPage({super.key});

  @override
  State<TicketCreationPage> createState() => _TicketCreationPageState();
}

class _TicketCreationPageState extends State<TicketCreationPage> {
  String? selectedCategory;
  CreateTicketModel createTicketModel = CreateTicketModel();
  GlobalKey<FormState> ticketFormKey = GlobalKey<FormState>();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    createTicketModel = createTicketModel.copyWith(
      accepted_language: Helper.getCountryCode(context),
    );
    return MainPage(
      title: LocaleKeys.profilePage_helpAndSupport.tr(),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 20.w,
              end: 20.w,
              top: 20.h,
              bottom: 12.h,
            ),
            child: Text(
              LocaleKeys.profilePage_helpAndSupport.tr(),
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
                fontSize: 22.sp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              LocaleKeys.profilePage_howCanWeHelpYou.tr(),
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontFamily: FontConstants.fontFamily(context.locale),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(
              vertical: 20.h,
              horizontal: 20.w,
            ),
            child:
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 20.h,
                  ),
                  child: BlocProvider<TicketsBlocBloc>(
                    create: (context) =>
                        getItInstance<TicketsBlocBloc>()
                          ..add(TicketsBlocEvent.started()),
                    child: BlocListener<TicketsBlocBloc, TicketsBlocState>(
                      listener: (context, state) {
                        if (state is TicketsBlocStateLoading) {
                          setState(() {
                            isLoading = true;
                          });
                        } else {
                          setState(() {
                            isLoading = false;
                          });
                        }
                        state.whenOrNull(
                          ticketCreated: (message) {
                            showMessage(
                              message: LocaleKeys
                                  .profilePage_ticketCreatedSuccessfully
                                  .tr(),
                              context: context,
                            );
                            ticketFormKey.currentState?.reset();
                            setState(() {
                              selectedCategory = null;
                              createTicketModel = CreateTicketModel(
                                accepted_language: Helper.getCountryCode(
                                  context,
                                ),
                              );
                            });
                          },
                          sessionExpired: () async {
                            showMessage(
                              message: LocaleKeys.common_error.tr(),
                              context: context,
                            );
                            await getItInstance<AppPreferences>().setUserInfo(
                              loginStateEntity: LoginStateEntity(
                                loginStateEnum: LoginStateEnum.unlogined,
                              ),
                            );
                            if (context.mounted && context.canPop()) {
                              context.pop();
                            }
                          },
                          error: (message) {
                            showMessage(
                              message: message ?? LocaleKeys.common_error.tr(),
                              context: context,
                            );
                          },
                        );
                      },
                      child: Form(
                        key: ticketFormKey,
                        autovalidateMode: AutovalidateMode.always,
                        child: Column(
                          children: [
                            DropDownWithLabel<String>(
                              items: [
                                LocaleKeys.profilePage_ticketCategory_technical,
                                LocaleKeys.profilePage_ticketCategory_complaint,
                                LocaleKeys
                                    .profilePage_ticketCategory_suggestion,
                                LocaleKeys.profilePage_ticketCategory_others,
                              ],
                              onChange: (newValue) {
                                setState(() {
                                  createTicketModel = createTicketModel.copyWith(
                                    category: newValue
                                        .toString()
                                        .split(".")
                                        .last
                                        .toLowerCase(),
                                    priority:
                                        newValue ==
                                            LocaleKeys
                                                .profilePage_ticketCategory_technical
                                        ? "urgent"
                                        : "normal",
                                  );
                                });
                              },
                              stringConverter: (String? value) =>
                                  value?.tr() ?? "",
                              dropDownWidth: 300.w,
                              dropDownHeight: 50.h,

                              validator: (value) {
                                if (value == null || value.toString().isEmpty) {
                                  return LocaleKeys
                                      .profilePage_categoryIsRequired
                                      .tr();
                                }
                                return null;
                              },

                              dropDownMinWidth: 200.w,
                              label: LocaleKeys.profilePage_category.tr(),
                              labelPosition: Position.upper,
                              isLoading: false,
                              value: selectedCategory,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20.h),
                              child: CustomInputField(
                                width: 300.w,
                                label: LocaleKeys.profilePage_subject.tr(),
                                fillColor: Colors.transparent,
                                onChanged: (value) {
                                  createTicketModel = createTicketModel
                                      .copyWith(subject: value);
                                  setState(() {});
                                },
                                validator: (value) {
                                  if (value == null ||
                                      value.toString().trim().isEmpty) {
                                    return LocaleKeys
                                        .profilePage_subjectIsRequired
                                        .tr();
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.h),
                              child: CustomInputField(
                                onChanged: (value) {
                                  createTicketModel = createTicketModel
                                      .copyWith(initial_message: value);
                                  setState(() {});
                                },
                                width: 300.w,
                                label: LocaleKeys.profilePage_message.tr(),
                                fillColor: Colors.transparent,
                                hintText: LocaleKeys
                                    .profilePage_typeYourMessageHere
                                    .tr(),
                                maxLines: 6,
                                validator: (value) {
                                  if (value == null ||
                                      value.toString().trim().isEmpty) {
                                    return LocaleKeys
                                        .profilePage_messageIsRequired
                                        .tr();
                                  }
                                  return null;
                                },
                              ),
                            ),
                            Builder(
                              builder: (context) {
                                return ElevatedButton(
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style
                                      ?.copyWith(
                                        backgroundColor: WidgetStatePropertyAll(
                                          Colors.transparent,
                                        ),

                                        padding: WidgetStatePropertyAll(
                                          EdgeInsets.zero,
                                        ),
                                        shadowColor: WidgetStatePropertyAll(
                                          Colors.transparent,
                                        ),
                                      ),
                                  onPressed: !isLoading
                                      ? () {
                                          print("create ${createTicketModel}");
                                          (ticketFormKey.currentState
                                                      ?.validate() ??
                                                  false)
                                              ? context.read<TicketsBlocBloc>().add(
                                                  TicketsBlocEvent.createTicket(
                                                    model: createTicketModel,
                                                  ),
                                                )
                                              : null;
                                        }
                                      : null,
                                  child:
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 40.w,
                                          vertical: 12.h,
                                        ),
                                        child: Center(
                                          child: isLoading
                                              ? CircularProgressIndicator()
                                              : Text(
                                                  LocaleKeys.profilePage_submit
                                                      .tr(),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .labelLarge
                                                      ?.copyWith(
                                                        fontFamily:
                                                            FontConstants.fontFamily(
                                                              context.locale,
                                                            ),
                                                      ),
                                                ),
                                        ),
                                      ).asGlass(
                                        frosted: true,
                                        blurX: 38,
                                        blurY: 38,
                                        border: Theme.of(
                                          context,
                                        ).defaultBorderSide,
                                        clipBorderRadius:
                                            BorderRadiusGeometry.circular(12.r),
                                        tintColor: Theme.of(context)
                                            .colorScheme
                                            .primary
                                            .withValues(alpha: 0.9),
                                      ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ).asGlass(
                  frosted: true,
                  blurX: 38,
                  blurY: 38,
                  border: Theme.of(context).defaultBorderSide,
                  clipBorderRadius: BorderRadiusGeometry.circular(12.r),
                  tintColor: Theme.of(
                    context,
                  ).colorScheme.primary.withValues(alpha: 0.9),
                ),
          ),
        ],
      ),
    );
  }
}
