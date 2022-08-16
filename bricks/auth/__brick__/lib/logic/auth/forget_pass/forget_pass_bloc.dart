import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/repository/auth/auth_repo.dart';
import 'package:{{name}}/logic/auth/forget_pass/forget_pass_state.dart';
import 'package:{{name}}/shared/error/failuers.dart';

class ForgetPasswordBloc extends Cubit<ForgetPasswordState> {
  ForgetPasswordBloc({required this.authRepoImpl}) : super(const ForgetPasswordState.initial());

  static ForgetPasswordBloc of(BuildContext context) {
    return BlocProvider.of<ForgetPasswordBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;

  sendCode({required String email}) async {
    emit(const ForgetPasswordState.loading());
    try {
      final result = await authRepoImpl.forgetPassword(email: email);

      result.fold(
        (l) {
          emit(ForgetPasswordState.error(failure: l));
          debugPrint('================= Forget Password   (Bloc): Failed $l ');
        },
        (r) {
          emit(const ForgetPasswordState.success());
          debugPrint('================= Forget Password (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      emit(const ForgetPasswordState.error(failure: KFailure.someThingWrongPleaseTryagain()));
      debugPrint('================= Forget Password  (Bloc) (catch):  $e');
    }
  }
}
