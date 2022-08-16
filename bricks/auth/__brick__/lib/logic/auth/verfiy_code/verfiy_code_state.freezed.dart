// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verfiy_code_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerfiyCodeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerfiyCodeStateInitial value) initial,
    required TResult Function(VerfiyCodeStateLoading value) loading,
    required TResult Function(VerfiyCodeStateSuccess value) success,
    required TResult Function(VerfiyCodeStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerfiyCodeStateCopyWith<$Res> {
  factory $VerfiyCodeStateCopyWith(
          VerfiyCodeState value, $Res Function(VerfiyCodeState) then) =
      _$VerfiyCodeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$VerfiyCodeStateCopyWithImpl<$Res>
    implements $VerfiyCodeStateCopyWith<$Res> {
  _$VerfiyCodeStateCopyWithImpl(this._value, this._then);

  final VerfiyCodeState _value;
  // ignore: unused_field
  final $Res Function(VerfiyCodeState) _then;
}

/// @nodoc
abstract class _$$VerfiyCodeStateInitialCopyWith<$Res> {
  factory _$$VerfiyCodeStateInitialCopyWith(_$VerfiyCodeStateInitial value,
          $Res Function(_$VerfiyCodeStateInitial) then) =
      __$$VerfiyCodeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerfiyCodeStateInitialCopyWithImpl<$Res>
    extends _$VerfiyCodeStateCopyWithImpl<$Res>
    implements _$$VerfiyCodeStateInitialCopyWith<$Res> {
  __$$VerfiyCodeStateInitialCopyWithImpl(_$VerfiyCodeStateInitial _value,
      $Res Function(_$VerfiyCodeStateInitial) _then)
      : super(_value, (v) => _then(v as _$VerfiyCodeStateInitial));

  @override
  _$VerfiyCodeStateInitial get _value =>
      super._value as _$VerfiyCodeStateInitial;
}

/// @nodoc

class _$VerfiyCodeStateInitial implements VerfiyCodeStateInitial {
  const _$VerfiyCodeStateInitial();

  @override
  String toString() {
    return 'VerfiyCodeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerfiyCodeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
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
    required TResult Function(VerfiyCodeStateInitial value) initial,
    required TResult Function(VerfiyCodeStateLoading value) loading,
    required TResult Function(VerfiyCodeStateSuccess value) success,
    required TResult Function(VerfiyCodeStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VerfiyCodeStateInitial implements VerfiyCodeState {
  const factory VerfiyCodeStateInitial() = _$VerfiyCodeStateInitial;
}

/// @nodoc
abstract class _$$VerfiyCodeStateLoadingCopyWith<$Res> {
  factory _$$VerfiyCodeStateLoadingCopyWith(_$VerfiyCodeStateLoading value,
          $Res Function(_$VerfiyCodeStateLoading) then) =
      __$$VerfiyCodeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerfiyCodeStateLoadingCopyWithImpl<$Res>
    extends _$VerfiyCodeStateCopyWithImpl<$Res>
    implements _$$VerfiyCodeStateLoadingCopyWith<$Res> {
  __$$VerfiyCodeStateLoadingCopyWithImpl(_$VerfiyCodeStateLoading _value,
      $Res Function(_$VerfiyCodeStateLoading) _then)
      : super(_value, (v) => _then(v as _$VerfiyCodeStateLoading));

  @override
  _$VerfiyCodeStateLoading get _value =>
      super._value as _$VerfiyCodeStateLoading;
}

/// @nodoc

class _$VerfiyCodeStateLoading implements VerfiyCodeStateLoading {
  const _$VerfiyCodeStateLoading();

  @override
  String toString() {
    return 'VerfiyCodeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerfiyCodeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
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
    required TResult Function(VerfiyCodeStateInitial value) initial,
    required TResult Function(VerfiyCodeStateLoading value) loading,
    required TResult Function(VerfiyCodeStateSuccess value) success,
    required TResult Function(VerfiyCodeStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VerfiyCodeStateLoading implements VerfiyCodeState {
  const factory VerfiyCodeStateLoading() = _$VerfiyCodeStateLoading;
}

/// @nodoc
abstract class _$$VerfiyCodeStateSuccessCopyWith<$Res> {
  factory _$$VerfiyCodeStateSuccessCopyWith(_$VerfiyCodeStateSuccess value,
          $Res Function(_$VerfiyCodeStateSuccess) then) =
      __$$VerfiyCodeStateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VerfiyCodeStateSuccessCopyWithImpl<$Res>
    extends _$VerfiyCodeStateCopyWithImpl<$Res>
    implements _$$VerfiyCodeStateSuccessCopyWith<$Res> {
  __$$VerfiyCodeStateSuccessCopyWithImpl(_$VerfiyCodeStateSuccess _value,
      $Res Function(_$VerfiyCodeStateSuccess) _then)
      : super(_value, (v) => _then(v as _$VerfiyCodeStateSuccess));

  @override
  _$VerfiyCodeStateSuccess get _value =>
      super._value as _$VerfiyCodeStateSuccess;
}

/// @nodoc

class _$VerfiyCodeStateSuccess implements VerfiyCodeStateSuccess {
  const _$VerfiyCodeStateSuccess();

  @override
  String toString() {
    return 'VerfiyCodeState.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VerfiyCodeStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
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
    required TResult Function(VerfiyCodeStateInitial value) initial,
    required TResult Function(VerfiyCodeStateLoading value) loading,
    required TResult Function(VerfiyCodeStateSuccess value) success,
    required TResult Function(VerfiyCodeStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class VerfiyCodeStateSuccess implements VerfiyCodeState {
  const factory VerfiyCodeStateSuccess() = _$VerfiyCodeStateSuccess;
}

/// @nodoc
abstract class _$$VerfiyCodeStateErrorCopyWith<$Res> {
  factory _$$VerfiyCodeStateErrorCopyWith(_$VerfiyCodeStateError value,
          $Res Function(_$VerfiyCodeStateError) then) =
      __$$VerfiyCodeStateErrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$VerfiyCodeStateErrorCopyWithImpl<$Res>
    extends _$VerfiyCodeStateCopyWithImpl<$Res>
    implements _$$VerfiyCodeStateErrorCopyWith<$Res> {
  __$$VerfiyCodeStateErrorCopyWithImpl(_$VerfiyCodeStateError _value,
      $Res Function(_$VerfiyCodeStateError) _then)
      : super(_value, (v) => _then(v as _$VerfiyCodeStateError));

  @override
  _$VerfiyCodeStateError get _value => super._value as _$VerfiyCodeStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$VerfiyCodeStateError(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerfiyCodeStateError implements VerfiyCodeStateError {
  const _$VerfiyCodeStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'VerfiyCodeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerfiyCodeStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$VerfiyCodeStateErrorCopyWith<_$VerfiyCodeStateError> get copyWith =>
      __$$VerfiyCodeStateErrorCopyWithImpl<_$VerfiyCodeStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VerfiyCodeStateInitial value) initial,
    required TResult Function(VerfiyCodeStateLoading value) loading,
    required TResult Function(VerfiyCodeStateSuccess value) success,
    required TResult Function(VerfiyCodeStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VerfiyCodeStateInitial value)? initial,
    TResult Function(VerfiyCodeStateLoading value)? loading,
    TResult Function(VerfiyCodeStateSuccess value)? success,
    TResult Function(VerfiyCodeStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class VerfiyCodeStateError implements VerfiyCodeState {
  const factory VerfiyCodeStateError({required final String error}) =
      _$VerfiyCodeStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$VerfiyCodeStateErrorCopyWith<_$VerfiyCodeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
