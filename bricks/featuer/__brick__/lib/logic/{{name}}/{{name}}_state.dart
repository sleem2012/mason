import 'package:freezed_annotation/freezed_annotation.dart';
part '{{name}}_state.freezed.dart';

@freezed
abstract class {{name.pascalCase()}}State with _${{name.pascalCase()}}State{
  const factory {{name.pascalCase()}}State.initial() = {{name.pascalCase()}}StateInitial;
  const factory {{name.pascalCase()}}State.loading() = {{name.pascalCase()}}StateLoading;
  const factory {{name.pascalCase()}}State.success() = {{name.pascalCase()}}StateSuccess;
  const factory {{name.pascalCase()}}State.error({required String error}) = {{name.pascalCase()}}StateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 