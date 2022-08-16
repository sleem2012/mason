import 'package:freezed_annotation/freezed_annotation.dart';
part 'verfiy_code_state.freezed.dart';

@freezed
abstract class VerfiyCodeState with _$VerfiyCodeState {
  const factory VerfiyCodeState.initial() = VerfiyCodeStateInitial;
  const factory VerfiyCodeState.loading() = VerfiyCodeStateLoading;
  const factory VerfiyCodeState.success() = VerfiyCodeStateSuccess;
  const factory VerfiyCodeState.error({required String error}) = VerfiyCodeStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 

