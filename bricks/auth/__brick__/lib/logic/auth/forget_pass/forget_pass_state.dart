import 'package:{{name}}/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'forget_pass_state.freezed.dart';

@freezed
abstract class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = ForgetPasswordStateInitial;
  const factory ForgetPasswordState.loading() = ForgetPasswordStateLoading;
  const factory ForgetPasswordState.success() = ForgetPasswordStateSuccess;
  const factory ForgetPasswordState.error({required KFailure failure}) = ForgetPasswordStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 

