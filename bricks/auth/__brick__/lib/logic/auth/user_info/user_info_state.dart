import 'package:{{name}}/data/models/auth/user_model.dart';
import 'package:{{name}}/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_info_state.freezed.dart';

@freezed
abstract class UserInfoState with _$UserInfoState {
  const factory UserInfoState.initial() = UserInfoStateInitial;
  const factory UserInfoState.loading() = UserInfoStateLoading;
  const factory UserInfoState.success({required UserModel userModel}) = UserInfoStateSuccess;
  const factory UserInfoState.error({required KFailure failure}) = UserInfoStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 