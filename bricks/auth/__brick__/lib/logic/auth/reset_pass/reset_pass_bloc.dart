import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/repository/auth/auth_repo.dart';
import 'package:{{name}}/logic/auth/reset_pass/reset_pass_state.dart';
import 'package:{{name}}/shared/error/failuers.dart';

class ResetPasswordBloc extends Cubit<ResetPasswordState> {
  ResetPasswordBloc({required this.authRepoImpl}) : super(const ResetPasswordState.initial());

  static ResetPasswordBloc of(BuildContext context) {
    return BlocProvider.of<ResetPasswordBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;

  reset({required String password, required String passwordConf}) async {
    emit(const ResetPasswordState.loading());
    try {
      final result = await authRepoImpl.resetPassword(password: password, passwordConf: passwordConf);

      result.fold(
        (l) {
          emit(ResetPasswordState.error(failure: l));
          debugPrint('================= Reset Password   (Bloc): Failed $l ');
        },
        (r) {
          emit(const ResetPasswordState.success());
          debugPrint('================= Reset Password (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= Reset Password  (Bloc) (catch):  $e');
      emit(const ResetPasswordState.error(failure: KFailure.someThingWrongPleaseTryagain()));
    }
  }
}
