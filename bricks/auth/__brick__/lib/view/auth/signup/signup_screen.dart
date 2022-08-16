import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:{{name}}/di.dart';
import 'package:{{name}}/logic/auth/register/register_bloc.dart';
import 'package:{{name}}/logic/auth/register/register_state.dart';
import 'package:{{name}}/logic/global/location/location_bloc.dart';
import 'package:{{name}}/logic/global/location/location_state.dart';
import 'package:{{name}}/shared/localization/trans.dart';
import 'package:{{name}}/shared/theme/text_theme.dart';
import 'package:{{name}}/views/auth/login/login_screen.dart';
import 'package:{{name}}/views/widgets/on_success_view.dart';
import 'package:{{name}}/views/auth/signup/widgets/add_location_details.dart';
import 'package:{{name}}/views/widgets/country_code.dart';
import 'package:{{name}}/views/widgets/custom_search.dart';
import 'package:{{name}}/views/widgets/gender_drop.dart';
import 'package:{{name}}/views/widgets/icon_button.dart';
import 'package:{{name}}/views/widgets/loading/loading_overlay.dart';
import 'package:{{name}}/views/widgets/pick_image_widget.dart';
import 'package:get/get.dart';

import '../../../shared/theme/helper.dart';
import '../../../shared/theme/colors.dart';
import '../../../views/widgets/custom_button.dart';
import '../../../views/widgets/text_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: BlocProvider(
            create: (context) => Di.registerBloc,
            child: BlocConsumer<RegisterBloc, RegisterState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () => null,
                  success: () {
                    Get.offAll(
                      () => const OnSuccessView(
                        destination: LoginScreen(),
                        msg: 'Successflly Registered. \n Now you Can Login',
                      ),
                    );
                  },
                );
              },
              builder: (context, state) {
                final regBloc = RegisterBloc.of(context);
                return KLoadingOverlay(
                  isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: KHelper.hScaffoldPadding),
                    child: Column(
                      children: [
                        SizedBox(height: Get.height * .1),
                        SvgPicture.asset('assets/images/Login Logo.svg'),
                        Text(
                          Tr.get.sign_up,
                          style: TextStyle(
                            color: KColors.of(context).accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: Get.height * .05),
                        SvgPicture.asset('assets/images/registration.svg'),
                        SizedBox(height: Get.height * .07),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              Text(
                                Tr.get.business_information,
                                style: KTextStyle.of(context).topHint,
                              ),
                              SizedBox(height: Get.height * .01),
                              Row(
                                children: [
                                  PickImageWidget(onSelect: regBloc.selectImage),
                                  SizedBox(width: Get.width * .05),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        KTextFormField(
                                          controller: regBloc.nameController,
                                          hintText: Tr.get.name,
                                          enabled: true,
                                          keyboardType: TextInputType.text,
                                          validator: (value) {
                                            if (value!.isEmpty) {
                                              return Tr.get.name_validation;
                                            }
                                            return null;
                                          },
                                        ),
                                        SizedBox(height: Get.height * .02),
                                        GendersDropdown(
                                          onChanged: regBloc.selectGender,
                                          value: regBloc.selectedGender,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: Get.height * .01),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(Tr.get.birthdate_title, style: KTextStyle.of(context).body),
                              ),
                              SizedBox(height: Get.height * .01),
                              InkWell(
                                onTap: () {
                                  regBloc.selectDate(context);
                                },
                                child: KTextFormField(
                                  hintText: regBloc.registerModel?.birthdate.toString(),
                                  enabled: false,
                                  autofocus: false,
                                ),
                              ),
                              const SizedBox(height: 10),
                              InkWell(
                                onTap: () {
                                  Get.dialog(AddLocationDetails(
                                    registerBloc: regBloc,
                                    openMap: () {
                                      regBloc.selectAddress(context);
                                    },
                                  ));
                                },
                                child: Container(
                                  decoration: KHelper.of(context).outlineBorder,
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  height: 45,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          Tr.get.location_input,
                                          style: KTextStyle.of(context).hint,
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
                                        decoration: BoxDecoration(color: KColors.of(context).activeIcons, borderRadius: BorderRadius.circular(2)),
                                        child: SvgPicture.asset('assets/images/map_marked.svg'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              if (regBloc.addressIsNull) Text(Tr.get.address_is_null, style: KTextStyle.of(context).error),
                              const SizedBox(height: 10),
                              BlocBuilder<LocationBloc, LocationState>(
                                builder: (context, state) {
                                  final countryList = LocationBloc.of(context).countriesModel?.data ?? [];
                                  List cityList = LocationBloc.of(context).citiesModel?.data ?? [];
                                  return Column(
                                    children: [
                                      CustomSearchable(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: KColors.of(context).accentColor),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        items: countryList,
                                        dropDownMenuItems: countryList.map((item) {
                                          return item.name?.value;
                                        }).toList(),
                                        onChanged: (value) {
                                          if (value != null) {
                                            debugPrint(value.toString());
                                            LocationBloc.of(context).getCities("${value?.id}");
                                          }
                                        },
                                        label: state.maybeWhen(orElse: () => false, loading: () => true && LocationBloc.of(context).countriesModel == null)
                                            ? Tr.get.loading
                                            : Tr.get.select_country,
                                      ),
                                      SizedBox(height: Get.height * .01),
                                      CustomSearchable(
                                        decoration: BoxDecoration(
                                          border: Border.all(color: KColors.of(context).accentColor),
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        items: cityList,
                                        dropDownMenuItems: cityList.map((item) {
                                          return item.name?.value;
                                        }).toList(),
                                        onChanged: (value) {
                                          if (value != null) {
                                            debugPrint(value.toString());
                                            regBloc.selectCityId((value?.id ?? 1), value);
                                          }
                                        },
                                        label: state.maybeWhen(orElse: () => false, loading: () => true) ? Tr.get.loading : Tr.get.select_city,
                                      ),
                                    ],
                                  );
                                },
                              ),
                              SizedBox(height: Get.height * .01),
                              KTextFormField(
                                controller: regBloc.phoneController,
                                hintText: Tr.get.phone_number,
                                enabled: true,
                                keyboardType: TextInputType.phone,
                                prefixIcon: CountryCodeWidget(
                                  onChanged: (p0) {
                                    regBloc.cCode = p0?.dialCode ?? '+966';
                                    debugPrint('================= ${regBloc.cCode} : ');
                                  },
                                  onInit: (p0) {
                                    regBloc.cCode = p0?.dialCode ?? '+966';
                                  },
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return Tr.get.phone_number_validation;
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: Get.height * .01),
                              KTextFormField(
                                hintText: Tr.get.email,
                                controller: regBloc.emailController,
                                enabled: true,
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return Tr.get.email_validation;
                                  }
                                  return null;
                                },
                              ),
                              SizedBox(height: Get.height * .01),
                              KTextFormField(
                                hintText: Tr.get.password,
                                controller: regBloc.passwordController,
                                obscureText: regBloc.passVisible,
                                keyboardType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return Tr.get.pass_validation;
                                  }
                                  return null;
                                },
                                suffixIcon: KIconButton(
                                  onPressed: regBloc.togglePassV,
                                  child: Icon(!regBloc.passVisible ? KHelper.visibilityOff : KHelper.visibility),
                                ),
                              ),
                              SizedBox(height: Get.height * .01),
                              KTextFormField(
                                hintText: Tr.get.confirm_password,
                                obscureText: regBloc.passVisible,
                                controller: regBloc.passwordConfirmController,
                                keyboardType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'please enter your confirm password';
                                  }
                                  if (value != regBloc.passwordController.text) {
                                    return Tr.get.confirm_password_validation;
                                  }
                                  if (value != regBloc.passwordController.text) {
                                    return Tr.get.confirm_password_matching_validation;
                                  }
                                  return null;
                                },
                                suffixIcon: KIconButton(
                                  onPressed: regBloc.togglePassV,
                                  child: Icon(!regBloc.passVisible ? KHelper.visibilityOff : KHelper.visibility),
                                ),
                              ),
                              const SizedBox(height: 40),
                              CustomBtn(
                                text: Tr.get.submit,
                                onChange: () {
                                  if (_formKey.currentState!.validate()) {
                                    FocusManager.instance.primaryFocus?.unfocus();
                                    regBloc.register();
                                  }
                                },
                                height: 45,
                              ),
                              const SizedBox(height: 50),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
