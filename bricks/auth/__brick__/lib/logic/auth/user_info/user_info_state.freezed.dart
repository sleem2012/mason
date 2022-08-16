// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserInfoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
    TResult Function(KFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInfoStateInitial value) initial,
    required TResult Function(UserInfoStateLoading value) loading,
    required TResult Function(UserInfoStateSuccess value) success,
    required TResult Function(UserInfoStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoStateCopyWith<$Res> {
  factory $UserInfoStateCopyWith(
          UserInfoState value, $Res Function(UserInfoState) then) =
      _$UserInfoStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserInfoStateCopyWithImpl<$Res>
    implements $UserInfoStateCopyWith<$Res> {
  _$UserInfoStateCopyWithImpl(this._value, this._then);

  final UserInfoState _value;
  // ignore: unused_field
  final $Res Function(UserInfoState) _then;
}

/// @nodoc
abstract class _$$UserInfoStateInitialCopyWith<$Res> {
  factory _$$UserInfoStateInitialCopyWith(_$UserInfoStateInitial value,
          $Res Function(_$UserInfoStateInitial) then) =
      __$$UserInfoStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInfoStateInitialCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res>
    implements _$$UserInfoStateInitialCopyWith<$Res> {
  __$$UserInfoStateInitialCopyWithImpl(_$UserInfoStateInitial _value,
      $Res Function(_$UserInfoStateInitial) _then)
      : super(_value, (v) => _then(v as _$UserInfoStateInitial));

  @override
  _$UserInfoStateInitial get _value => super._value as _$UserInfoStateInitial;
}

/// @nodoc

class _$UserInfoStateInitial implements UserInfoStateInitial {
  const _$UserInfoStateInitial();

  @override
  String toString() {
    return 'UserInfoState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInfoStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
    TResult Function(KFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
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
    required TResult Function(UserInfoStateInitial value) initial,
    required TResult Function(UserInfoStateLoading value) loading,
    required TResult Function(UserInfoStateSuccess value) success,
    required TResult Function(UserInfoStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UserInfoStateInitial implements UserInfoState {
  const factory UserInfoStateInitial() = _$UserInfoStateInitial;
}

/// @nodoc
abstract class _$$UserInfoStateLoadingCopyWith<$Res> {
  factory _$$UserInfoStateLoadingCopyWith(_$UserInfoStateLoading value,
          $Res Function(_$UserInfoStateLoading) then) =
      __$$UserInfoStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserInfoStateLoadingCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res>
    implements _$$UserInfoStateLoadingCopyWith<$Res> {
  __$$UserInfoStateLoadingCopyWithImpl(_$UserInfoStateLoading _value,
      $Res Function(_$UserInfoStateLoading) _then)
      : super(_value, (v) => _then(v as _$UserInfoStateLoading));

  @override
  _$UserInfoStateLoading get _value => super._value as _$UserInfoStateLoading;
}

/// @nodoc

class _$UserInfoStateLoading implements UserInfoStateLoading {
  const _$UserInfoStateLoading();

  @override
  String toString() {
    return 'UserInfoState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserInfoStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
    TResult Function(KFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
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
    required TResult Function(UserInfoStateInitial value) initial,
    required TResult Function(UserInfoStateLoading value) loading,
    required TResult Function(UserInfoStateSuccess value) success,
    required TResult Function(UserInfoStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserInfoStateLoading implements UserInfoState {
  const factory UserInfoStateLoading() = _$UserInfoStateLoading;
}

/// @nodoc
abstract class _$$UserInfoStateSuccessCopyWith<$Res> {
  factory _$$UserInfoStateSuccessCopyWith(_$UserInfoStateSuccess value,
          $Res Function(_$UserInfoStateSuccess) then) =
      __$$UserInfoStateSuccessCopyWithImpl<$Res>;
  $Res call({UserModel userModel});
}

/// @nodoc
class __$$UserInfoStateSuccessCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res>
    implements _$$UserInfoStateSuccessCopyWith<$Res> {
  __$$UserInfoStateSuccessCopyWithImpl(_$UserInfoStateSuccess _value,
      $Res Function(_$UserInfoStateSuccess) _then)
      : super(_value, (v) => _then(v as _$UserInfoStateSuccess));

  @override
  _$UserInfoStateSuccess get _value => super._value as _$UserInfoStateSuccess;

  @override
  $Res call({
    Object? userModel = freezed,
  }) {
    return _then(_$UserInfoStateSuccess(
      userModel: userModel == freezed
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UserInfoStateSuccess implements UserInfoStateSuccess {
  const _$UserInfoStateSuccess({required this.userModel});

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserInfoState.success(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoStateSuccess &&
            const DeepCollectionEquality().equals(other.userModel, userModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userModel));

  @JsonKey(ignore: true)
  @override
  _$$UserInfoStateSuccessCopyWith<_$UserInfoStateSuccess> get copyWith =>
      __$$UserInfoStateSuccessCopyWithImpl<_$UserInfoStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure failure) error,
  }) {
    return success(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
    TResult Function(KFailure failure)? error,
  }) {
    return success?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
    TResult Function(KFailure failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserInfoStateInitial value) initial,
    required TResult Function(UserInfoStateLoading value) loading,
    required TResult Function(UserInfoStateSuccess value) success,
    required TResult Function(UserInfoStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserInfoStateSuccess implements UserInfoState {
  const factory UserInfoStateSuccess({required final UserModel userModel}) =
      _$UserInfoStateSuccess;

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$UserInfoStateSuccessCopyWith<_$UserInfoStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserInfoStateErrorCopyWith<$Res> {
  factory _$$UserInfoStateErrorCopyWith(_$UserInfoStateError value,
          $Res Function(_$UserInfoStateError) then) =
      __$$UserInfoStateErrorCopyWithImpl<$Res>;
  $Res call({KFailure failure});

  $KFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$UserInfoStateErrorCopyWithImpl<$Res>
    extends _$UserInfoStateCopyWithImpl<$Res>
    implements _$$UserInfoStateErrorCopyWith<$Res> {
  __$$UserInfoStateErrorCopyWithImpl(
      _$UserInfoStateError _value, $Res Function(_$UserInfoStateError) _then)
      : super(_value, (v) => _then(v as _$UserInfoStateError));

  @override
  _$UserInfoStateError get _value => super._value as _$UserInfoStateError;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$UserInfoStateError(
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

class _$UserInfoStateError implements UserInfoStateError {
  const _$UserInfoStateError({required this.failure});

  @override
  final KFailure failure;

  @override
  String toString() {
    return 'UserInfoState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoStateError &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$UserInfoStateErrorCopyWith<_$UserInfoStateError> get copyWith =>
      __$$UserInfoStateErrorCopyWithImpl<_$UserInfoStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
    TResult Function(KFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel userModel)? success,
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
    required TResult Function(UserInfoStateInitial value) initial,
    required TResult Function(UserInfoStateLoading value) loading,
    required TResult Function(UserInfoStateSuccess value) success,
    required TResult Function(UserInfoStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserInfoStateInitial value)? initial,
    TResult Function(UserInfoStateLoading value)? loading,
    TResult Function(UserInfoStateSuccess value)? success,
    TResult Function(UserInfoStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserInfoStateError implements UserInfoState {
  const factory UserInfoStateError({required final KFailure failure}) =
      _$UserInfoStateError;

  KFailure get failure;
  @JsonKey(ignore: true)
  _$$UserInfoStateErrorCopyWith<_$UserInfoStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
