import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/repository/auth/auth_repo.dart';
import 'package:{{name}}/logic/auth/logout/logout_state.dart';
import 'package:{{name}}/shared/cache/locale_storage.dart';
import 'package:{{name}}/shared/error/failuers.dart';

class LogoutBloc extends Cubit<LogoutState> {
  LogoutBloc({required this.authRepoImpl}) : super(const LogoutState.initial());

  static LogoutBloc of(BuildContext context) {
    return BlocProvider.of<LogoutBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;

  logout() async {
    emit(const LogoutState.loading());
    try {
      final result = await authRepoImpl.logout();

      result.fold(
        (l) {
          emit(LogoutState.error(failure: l));
          debugPrint('================= logout   (Bloc): Failed $l ');
        },
        (r) {
          KStorage.i.delToken;
          KStorage.i.delUserInfo;
          emit(const LogoutState.success());
          debugPrint('================= logout   (Bloc): Success => $r ');
        },
      );
    } catch (e) {
      debugPrint('================= logout   (Bloc) (catch):  $e');
      emit(const LogoutState.error(failure: KFailure.someThingWrongPleaseTryagain()));
    }
  }
}
