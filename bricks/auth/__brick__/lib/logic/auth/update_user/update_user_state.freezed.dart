// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserStateInitial value) initial,
    required TResult Function(UpdateUserStateLoading value) loading,
    required TResult Function(UpdateUserStateSuccess value) success,
    required TResult Function(UpdateUserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserStateCopyWith<$Res> {
  factory $UpdateUserStateCopyWith(
          UpdateUserState value, $Res Function(UpdateUserState) then) =
      _$UpdateUserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateUserStateCopyWithImpl<$Res>
    implements $UpdateUserStateCopyWith<$Res> {
  _$UpdateUserStateCopyWithImpl(this._value, this._then);

  final UpdateUserState _value;
  // ignore: unused_field
  final $Res Function(UpdateUserState) _then;
}

/// @nodoc
abstract class _$$UpdateUserStateInitialCopyWith<$Res> {
  factory _$$UpdateUserStateInitialCopyWith(_$UpdateUserStateInitial value,
          $Res Function(_$UpdateUserStateInitial) then) =
      __$$UpdateUserStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserStateInitialCopyWithImpl<$Res>
    extends _$UpdateUserStateCopyWithImpl<$Res>
    implements _$$UpdateUserStateInitialCopyWith<$Res> {
  __$$UpdateUserStateInitialCopyWithImpl(_$UpdateUserStateInitial _value,
      $Res Function(_$UpdateUserStateInitial) _then)
      : super(_value, (v) => _then(v as _$UpdateUserStateInitial));

  @override
  _$UpdateUserStateInitial get _value =>
      super._value as _$UpdateUserStateInitial;
}

/// @nodoc

class _$UpdateUserStateInitial implements UpdateUserStateInitial {
  const _$UpdateUserStateInitial();

  @override
  String toString() {
    return 'UpdateUserState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserStateInitial value) initial,
    required TResult Function(UpdateUserStateLoading value) loading,
    required TResult Function(UpdateUserStateSuccess value) success,
    required TResult Function(UpdateUserStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UpdateUserStateInitial implements UpdateUserState {
  const factory UpdateUserStateInitial() = _$UpdateUserStateInitial;
}

/// @nodoc
abstract class _$$UpdateUserStateLoadingCopyWith<$Res> {
  factory _$$UpdateUserStateLoadingCopyWith(_$UpdateUserStateLoading value,
          $Res Function(_$UpdateUserStateLoading) then) =
      __$$UpdateUserStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserStateLoadingCopyWithImpl<$Res>
    extends _$UpdateUserStateCopyWithImpl<$Res>
    implements _$$UpdateUserStateLoadingCopyWith<$Res> {
  __$$UpdateUserStateLoadingCopyWithImpl(_$UpdateUserStateLoading _value,
      $Res Function(_$UpdateUserStateLoading) _then)
      : super(_value, (v) => _then(v as _$UpdateUserStateLoading));

  @override
  _$UpdateUserStateLoading get _value =>
      super._value as _$UpdateUserStateLoading;
}

/// @nodoc

class _$UpdateUserStateLoading implements UpdateUserStateLoading {
  const _$UpdateUserStateLoading();

  @override
  String toString() {
    return 'UpdateUserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserStateInitial value) initial,
    required TResult Function(UpdateUserStateLoading value) loading,
    required TResult Function(UpdateUserStateSuccess value) success,
    required TResult Function(UpdateUserStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UpdateUserStateLoading implements UpdateUserState {
  const factory UpdateUserStateLoading() = _$UpdateUserStateLoading;
}

/// @nodoc
abstract class _$$UpdateUserStateSuccessCopyWith<$Res> {
  factory _$$UpdateUserStateSuccessCopyWith(_$UpdateUserStateSuccess value,
          $Res Function(_$UpdateUserStateSuccess) then) =
      __$$UpdateUserStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateUserStateSuccessCopyWithImpl<$Res>
    extends _$UpdateUserStateCopyWithImpl<$Res>
    implements _$$UpdateUserStateSuccessCopyWith<$Res> {
  __$$UpdateUserStateSuccessCopyWithImpl(_$UpdateUserStateSuccess _value,
      $Res Function(_$UpdateUserStateSuccess) _then)
      : super(_value, (v) => _then(v as _$UpdateUserStateSuccess));

  @override
  _$UpdateUserStateSuccess get _value =>
      super._value as _$UpdateUserStateSuccess;
}

/// @nodoc

class _$UpdateUserStateSuccess implements UpdateUserStateSuccess {
  const _$UpdateUserStateSuccess();

  @override
  String toString() {
    return 'UpdateUserState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateUserStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserStateInitial value) initial,
    required TResult Function(UpdateUserStateLoading value) loading,
    required TResult Function(UpdateUserStateSuccess value) success,
    required TResult Function(UpdateUserStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UpdateUserStateSuccess implements UpdateUserState {
  const factory UpdateUserStateSuccess() = _$UpdateUserStateSuccess;
}

/// @nodoc
abstract class _$$UpdateUserStateErrorCopyWith<$Res> {
  factory _$$UpdateUserStateErrorCopyWith(_$UpdateUserStateError value,
          $Res Function(_$UpdateUserStateError) then) =
      __$$UpdateUserStateErrorCopyWithImpl<$Res>;
  $Res call({KFailure failure});

  $KFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$UpdateUserStateErrorCopyWithImpl<$Res>
    extends _$UpdateUserStateCopyWithImpl<$Res>
    implements _$$UpdateUserStateErrorCopyWith<$Res> {
  __$$UpdateUserStateErrorCopyWithImpl(_$UpdateUserStateError _value,
      $Res Function(_$UpdateUserStateError) _then)
      : super(_value, (v) => _then(v as _$UpdateUserStateError));

  @override
  _$UpdateUserStateError get _value => super._value as _$UpdateUserStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$UpdateUserStateError(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as KFailure,
    ));
  }

  @override
  $KFailureCopyWith<$Res> get failure {
    return $KFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$UpdateUserStateError implements UpdateUserStateError {
  const _$UpdateUserStateError({required this.failure});

  @override
  final KFailure failure;

  @override
  String toString() {
    return 'UpdateUserState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserStateError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$UpdateUserStateErrorCopyWith<_$UpdateUserStateError> get copyWith =>
      __$$UpdateUserStateErrorCopyWithImpl<_$UpdateUserStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UpdateUserStateInitial value) initial,
    required TResult Function(UpdateUserStateLoading value) loading,
    required TResult Function(UpdateUserStateSuccess value) success,
    required TResult Function(UpdateUserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UpdateUserStateInitial value)? initial,
    TResult Function(UpdateUserStateLoading value)? loading,
    TResult Function(UpdateUserStateSuccess value)? success,
    TResult Function(UpdateUserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UpdateUserStateError implements UpdateUserState {
  const factory UpdateUserStateError({required final KFailure failure}) =
      _$UpdateUserStateError;

  KFailure get failure;
  @JsonKey(ignore: true)
  _$$UpdateUserStateErrorCopyWith<_$UpdateUserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
