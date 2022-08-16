import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_state.freezed.dart';
@freezed
abstract class RegisterState with _$RegisterState{
  const factory RegisterState.initial() = RegisterStateInitial;
  const factory RegisterState.loading() = RegisterStateLoading;
  const factory RegisterState.success() = RegisterStateSuccess;
  const factory RegisterState.PickImageSuccess() = RegisterStatePickImageSuccess;
  const factory RegisterState.PickImageLoading() = RegisterStatePickImageLoading;
  const factory RegisterState.PickImageError() = RegisterStatePickImageError;
  const factory RegisterState.error({required String error}) = RegisterStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 