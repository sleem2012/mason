import 'package:{{name}}/data/models/auth/user_model.dart';
import 'package:{{name}}/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_state.freezed.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginStateInitial;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.success({required UserModel loginModel}) = LoginStateSuccess;
  const factory LoginState.error({required KFailure failure}) = LoginStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 


