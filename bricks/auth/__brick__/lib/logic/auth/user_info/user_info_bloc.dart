import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name}}/data/models/auth/user_model.dart';
import 'package:{{name}}/data/repository/auth/auth_repo.dart';
import 'package:{{name}}/logic/auth/user_info/user_info_state.dart';
import 'package:{{name}}/shared/cache/locale_storage.dart';


class UserInfoBloc extends Cubit<UserInfoState> {
  UserInfoBloc({required this.authRepoImpl}) : super(const UserInfoState.initial());

  static UserInfoBloc of(BuildContext context) {
    return BlocProvider.of<UserInfoBloc>(context);
  }

  final AuthRepoImpl authRepoImpl;

  UserModel? userModel;

  UserModel? get user {
    userModel = KStorage.i.getUserInfo;
    return userModel;
  }

  getUserInfo() async {
    try {
      emit(const UserInfoState.loading());

      final result = await authRepoImpl.userInfo();
      result.fold(
        (l) {
          emit(UserInfoState.error(failure: l));
          debugPrint('================= User info (Bloc): Failed => $l ');
        },
        (r) {
          userModel = r;
          KStorage.i.setToken(userModel?.data?.token ?? '');
          KStorage.i.setUserInfo(userModel);
          emit(UserInfoState.success(userModel: userModel!));
        },
      );
    } catch (e) {
      debugPrint('================= User Info Bloc Ex : $e ');
    }
  }
}
