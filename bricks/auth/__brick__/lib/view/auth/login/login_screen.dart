import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:{{name}}/data/models/errors/422/error_422_model.dart';
import 'package:{{name}}/di.dart';
import 'package:{{name}}/logic/auth/login/login_bloc.dart';
import 'package:{{name}}/logic/auth/login/login_state.dart';
import 'package:{{name}}/shared/error/failuers.dart';
import 'package:{{name}}/shared/localization/trans.dart';
import 'package:{{name}}/shared/theme/helper.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:{{name}}/views/auth/forget_pass/forget_pass_screen.dart';
import 'package:{{name}}/views/auth/signup/create_company.dart';
import 'package:{{name}}/views/auth/signup/signup_screen.dart';
import 'package:{{name}}/views/main_screen/main_screen.dart';
import 'package:{{name}}/views/widgets/action_dialog.dart';
import 'package:{{name}}/views/widgets/custom_button.dart';
import 'package:{{name}}/views/widgets/icon_button.dart';
import 'package:{{name}}/views/widgets/loading/loading_overlay.dart';
import 'package:{{name}}/views/widgets/text_field.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static TextEditingController email = TextEditingController();
  static TextEditingController password = TextEditingController();

  bool hasErrorIn422(state, String key) {
    KFailure? failure = state.maybeWhen(orElse: () => null, error: (value) => value);
    Error422Model? error422model = failure?.maybeWhen(orElse: () => null, error422: (error422model) => error422model);
    return error422model?.errors.keys.contains(key) ?? false;
  }

  String? error422Text<T>(state, String key) {
    KFailure? failure = state?.maybeWhen(orElse: () => null, error: (value) => value);
    Error422Model? error422model = failure?.maybeWhen(orElse: () => null, error422: (error422model) => error422model);
    return error422model?.errors[key]?.first;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        ActionDialog(
          title: Tr.get.exit_question,
          approveAction: Tr.get.yes_message,
          cancelAction: Tr.get.no_message,
          onApproveClick: () {
            Navigator.pop(context);
            SystemNavigator.pop();
          },
          onCancelClick: () {
            Navigator.pop(context);
          },
        ).show<void>(context);
        return false;
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: BlocProvider(
              create: (context) => Di.loginBloc,
              child: BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: (userModel) async {
                      if (userModel.data?.companyBranch == null && userModel.data?.company == null) {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const CreateCompanyScreen()));
                        debugPrint('=================>> Create Company ');
                      } else {
                        debugPrint('=================>> Has Company Or Branch ');
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainNavigationView()));
                      }
                    },
                  );
                },
                builder: (context, state) {
                  final login = LoginBloc.of(context);
                  return KLoadingOverlay(
                    isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: KHelper.hScaffoldPadding),
                      child: Column(
                        children: [
                          SizedBox(height: Get.height * .1),
                          SvgPicture.asset('assets/images/Login Logo.svg'),
                          Text(
                            Tr.get.login,
                            style: TextStyle(color: KColors.of(context).accentColor, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: Get.height * .05),
                          SvgPicture.asset('assets/images/login_img.svg'),
                          SizedBox(height: Get.height * .07),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                KTextFormField(
                                  controller: email,
                                  hintText: Tr.get.email,
                                  enabled: true,
                                  errorText: error422Text(state, Tr.get.yes_message),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return Tr.get.email_validation;
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: Get.height * .025),
                                KTextFormField(
                                  obscureText: login.isVisible,
                                  controller: password,
                                  hintText: Tr.get.password,
                                  errorText: error422Text(state, 'password'),
                                  keyboardType: TextInputType.visiblePassword,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return Tr.get.pass_validation;
                                    }
                                    return null;
                                  },
                                  suffixIcon: KIconButton(
                                    child: Icon(login.isVisible ? KHelper.visibilityOff : KHelper.visibility),
                                    onPressed: () {
                                      login.togglePassV();
                                    },
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: TextButton(
                                    onPressed: () {
                                      Get.to(() => ForgetPassScreen());
                                    },
                                    child: Text(
                                      Tr.get.forget_pass_question,
                                      style: TextStyle(color: KColors.of(context).accentColor),
                                    ),
                                  ),
                                ),
                                SizedBox(height: Get.height * .02),
                                CustomBtn(
                                  text: Tr.get.login,
                                  onChange: () {
                                    //Get.to(() => const MainNavigationView());
                                    if (_formKey.currentState!.validate()) {
                                      FocusManager.instance.primaryFocus?.unfocus();
                                      LoginBloc.of(context).login(email: email.text, password: password.text);
                                    }
                                  },
                                  height: Get.height * 0.05,
                                  width: Get.width * 5,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: () {
                                      Get.to(() => const SignUpScreen());
                                    },
                                    child: Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(text: Tr.get.dont_have_acc, style: const TextStyle(color: Colors.grey)),
                                          TextSpan(
                                            text: Tr.get.sign_up,
                                            style: TextStyle(color: KColors.of(context).accentColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
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
      ),
    );
  }
}
