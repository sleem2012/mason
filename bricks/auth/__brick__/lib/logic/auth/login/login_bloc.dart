import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/models/auth/user_model.dart';
import 'package:{{name}}/data/repository/auth/auth_repo.dart';
import 'package:{{name}}/logic/auth/login/login_state.dart';
import 'package:{{name}}/shared/cache/locale_storage.dart';
import 'package:{{name}}/shared/error/failuers.dart';

class LoginBloc extends Cubit<LoginState> {
  LoginBloc({required this.authRepoImpl}) : super(const LoginState.initial());

  static LoginBloc of(BuildContext context) {
    return BlocProvider.of<LoginBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;
  UserModel? userModel;

  bool isVisible = true;

  login({required String email, required String password}) async {
    emit(const LoginState.loading());
    try {
      final result = await authRepoImpl.login(email: email, password: password);
      result.fold(
        (l) {
          emit(LoginState.error(failure: l));
          debugPrint('================= Login (Bloc): Failed => $l ');
        },
        (r) {
          userModel = r;
          KStorage.i.setToken(userModel?.data?.token ?? '');
          KStorage.i.setUserInfo(userModel);
          emit(LoginState.success(loginModel: userModel!));
          debugPrint('================= Login (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= Login (Bloc) (catch):  $e');
      emit(const LoginState.error(failure: KFailure.someThingWrongPleaseTryagain()));
    }
  }

  togglePassV() {
    isVisible = !isVisible;
    emit(const LoginState.loading());
    emit(const LoginStateInitial());
  }
}
