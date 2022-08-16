import 'package:{{name}}/shared/error/failuers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'logout_state.freezed.dart';

@freezed
abstract class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = LogoutStateInitial;
  const factory LogoutState.loading() = LogoutStateLoading;
  const factory LogoutState.success() = LogoutStateSuccess;
  const factory LogoutState.error({required KFailure failure}) = LogoutStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 