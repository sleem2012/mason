import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:{{name}}/data/models/auth/register_model.dart';
import 'package:{{name}}/data/models/auth/update_user_model.dart';
import 'package:{{name}}/data/models/auth/user_model.dart';
import 'package:{{name}}/di.dart';
import 'package:{{name}}/shared/api_client/api_clien_helper.dart';
import 'package:{{name}}/shared/api_client/endpoints.dart';
import 'package:{{name}}/shared/error/failuers.dart';

abstract class _AuthRepo {
  Future<Either<KFailure, Unit>> register(RegisterModel registerModel);
  Future<Either<KFailure, UserModel>> login({required String email, required String password});
  Future<Either<KFailure, UserModel>> userInfo();
  Future<Either<KFailure, Unit>> logout();
  Future<Either<KFailure, Unit>> verifyToken({required String token});
  Future<Either<KFailure, Unit>> forgetPassword({required String email});
  Future<Either<KFailure, Unit>> resetPassword({required String password, required String passwordConf});
  Future<Either<KFailure, Unit>> updateUser({required UpdateUserModel model});
}

class AuthRepoImpl implements _AuthRepo {
  AuthRepoImpl();

  @override
  Future<Either<KFailure, Unit>> register(RegisterModel registerModel) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoinst.register, data: registerModel.toJson());

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> forgetPassword({required String email}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoinst.forget_pass, data: {"email": email});

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, UserModel>> login({required String email, required String password}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoinst.login, data: {"email": email, "password": password});

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) {
        return right(UserModel.fromJson(r));
      },
    );
  }

  @override
  Future<Either<KFailure, Unit>> logout() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoinst.logout);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> resetPassword({required String password, required String passwordConf}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoinst.reset_pass, data: {"password": password, "password_confirmation": passwordConf});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> verifyToken({required String token}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoinst.verify_token, data: {"token": token});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> updateUser({required UpdateUserModel model}) async {
    Future<Response<dynamic>> func = Di.dioClient.put(KEndPoinst.update_user, data: model.toJson());
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, UserModel>> userInfo() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoinst.user_info);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(UserModel.fromJson(r)),
    );
  }
}
