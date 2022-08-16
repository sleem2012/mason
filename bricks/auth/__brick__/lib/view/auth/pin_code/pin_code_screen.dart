import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:{{name}}/app.dart';
import 'package:{{name}}/di.dart';
import 'package:{{name}}/logic/auth/logout/logout_bloc.dart';
import 'package:{{name}}/logic/auth/logout/logout_state.dart';
import 'package:{{name}}/logic/auth/verfiy_code/verfiy_code_bloc.dart';
import 'package:{{name}}/logic/auth/verfiy_code/verfiy_code_state.dart';
import 'package:{{name}}/shared/localization/trans.dart';
import 'package:{{name}}/shared/theme/colors.dart';
import 'package:{{name}}/shared/theme/helper.dart';
import 'package:{{name}}/shared/theme/text_theme.dart';
import 'package:{{name}}/views/widgets/custom_button.dart';
import 'package:{{name}}/views/widgets/loading/loading_overlay.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

class PinCodeScreen extends StatelessWidget {
  final String? email, msg;
  final Widget destination;

  const PinCodeScreen({Key? key, this.email, required this.destination, this.msg}) : super(key: key);
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  static final TextEditingController _pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    debugPrint('================= $destination : ');
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: BlocProvider(
              create: (context) => Di.verfiyCodeBloc,
              child: BlocConsumer<VerfiyCodeBloc, VerfiyCodeState>(
                listener: (context, state) {
                  state.whenOrNull(success: () async {
                    KHelper.showSnackBar("your account verified successfully ,please login again");
                    Get.offAll(() => destination);
                  });
                },
                builder: (context, state) {
                  return KLoadingOverlay(
                    isLoading: state.maybeWhen(orElse: () => false, loading: () => true),
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Column(
                        children: [
                          const SizedBox(height: 20),
                          SvgPicture.asset('assets/images/Login Logo.svg'),
                          Text(
                            Tr.get.pin_Code,
                            style: TextStyle(color: KColors.of(context).accentColor, fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const SizedBox(height: 20),
                          SvgPicture.asset('assets/images/login_img.svg'),
                          const SizedBox(height: 30),
                          if (msg != null)
                            Text(
                              msg!,
                              style: KTextStyle.of(context).title2,
                            ),
                          const SizedBox(height: 20),
                          Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                Pinput(
                                  keyboardType: TextInputType.text,
                                  controller: _pinController,
                                  closeKeyboardWhenCompleted: true,
                                  errorText: Tr.get.invalid_code,
                                  validator: (String? v) {
                                    if (v!.isEmpty) {
                                      return Tr.get.pin_code_validation;
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 20),
                                state.maybeWhen(orElse: () => const SizedBox(), error: (error) => Text(error)),
                                const SizedBox(height: 20),
                                Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: CustomBtn(
                                    text: Tr.get.submit,
                                    onChange: () {
                                      if (_formKey.currentState!.validate()) {
                                        VerfiyCodeBloc.of(context).verfiyCode(token: _pinController.text);
                                      }
                                    },
                                    height: 40,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                BlocConsumer<LogoutBloc, LogoutState>(
                                  listener: (context, state) {
                                    state.whenOrNull(
                                      success: () {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => const Wrapper()));
                                      },
                                    );
                                  },
                                  builder: (context, state) {
                                    return TextButton(
                                      onPressed: LogoutBloc.of(context).logout,
                                      child: Text(
                                        state.maybeWhen(
                                          orElse: () => Tr.get.login_with_another_email,
                                          loading: () => Tr.get.loading,
                                        ),
                                      ),
                                    );
                                  },
                                )
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
