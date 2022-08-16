import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:{{name}}/di.dart';
import 'package:{{name}}/logic/auth/reset_pass/reset_pass_bloc.dart';
import 'package:{{name}}/logic/auth/reset_pass/reset_pass_state.dart';
import 'package:{{name}}/shared/localization/trans.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:{{name}}/views/auth/login/login_screen.dart';
import 'package:{{name}}/views/widgets/on_success_view.dart';
import 'package:{{name}}/views/widgets/custom_button.dart';
import 'package:{{name}}/views/widgets/loading/loading_overlay.dart';
import 'package:{{name}}/views/widgets/text_field.dart';
import 'package:get/get.dart';

class ResetPassScreen extends StatelessWidget {
  ResetPassScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final TextEditingController _confirmController = TextEditingController();
  static final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocProvider(
          create: (context) => Di.resetPasswordBloc,
          child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () => Get.to(() => OnSuccessView(msg: Tr.get.pass_change_success, destination: const LoginScreen())),
              );
            },
            builder: (context, state) {
              return KLoadingOverlay(
                isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/images/Login Logo.svg'),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 25),
                        child: Text(
                          'Reset Password',
                          style: TextStyle(color: KColors.of(context).accentColor, fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SvgPicture.asset('assets/images/login_img.svg'),
                      const SizedBox(height: 20),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            KTextFormField(
                              hintText: 'New Password',
                              controller: _passController,
                              enabled: true,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please enter your New Pass';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: Get.height * .02),
                            KTextFormField(
                              hintText: 'Confirm New Password',
                              controller: _confirmController,
                              enabled: true,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'please confirm your New Pass';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 25),
                            Padding(
                              padding: EdgeInsets.all(Get.width * .04),
                              child: CustomBtn(
                                text: 'Change Password',
                                onChange: () {
                                  if (_formKey.currentState!.validate()) {
                                    ResetPasswordBloc.of(context).reset(password: _passController.text, passwordConf: _confirmController.text);
                                    FocusManager.instance.primaryFocus?.unfocus();
                                  }
                                },
                                height: Get.height * 0.05,
                                width: Get.width * 5,
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
    );
  }
}
