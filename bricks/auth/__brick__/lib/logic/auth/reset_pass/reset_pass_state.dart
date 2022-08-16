import 'package:{{name}}/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'reset_pass_state.freezed.dart';

@freezed
abstract class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = ResetPasswordStateInitial;
  const factory ResetPasswordState.loading() = ResetPasswordStateLoading;
  const factory ResetPasswordState.success() = ResetPasswordStateSuccess;
  const factory ResetPasswordState.error({required KFailure failure}) = ResetPasswordStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 

