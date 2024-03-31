// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companies_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompaniesFailure {
  Object? get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error) defaultError,
    required TResult Function(Object? error) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error)? defaultError,
    TResult? Function(Object? error)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error)? defaultError,
    TResult Function(Object? error)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternet value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultError value)? defaultError,
    TResult? Function(NoInternet value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternet value)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompaniesFailureCopyWith<CompaniesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesFailureCopyWith<$Res> {
  factory $CompaniesFailureCopyWith(
          CompaniesFailure value, $Res Function(CompaniesFailure) then) =
      _$CompaniesFailureCopyWithImpl<$Res, CompaniesFailure>;
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class _$CompaniesFailureCopyWithImpl<$Res, $Val extends CompaniesFailure>
    implements $CompaniesFailureCopyWith<$Res> {
  _$CompaniesFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultErrorImplCopyWith<$Res>
    implements $CompaniesFailureCopyWith<$Res> {
  factory _$$DefaultErrorImplCopyWith(
          _$DefaultErrorImpl value, $Res Function(_$DefaultErrorImpl) then) =
      __$$DefaultErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$DefaultErrorImplCopyWithImpl<$Res>
    extends _$CompaniesFailureCopyWithImpl<$Res, _$DefaultErrorImpl>
    implements _$$DefaultErrorImplCopyWith<$Res> {
  __$$DefaultErrorImplCopyWithImpl(
      _$DefaultErrorImpl _value, $Res Function(_$DefaultErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$DefaultErrorImpl(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$DefaultErrorImpl implements DefaultError {
  const _$DefaultErrorImpl({this.error});

  @override
  final Object? error;

  @override
  String toString() {
    return 'CompaniesFailure.defaultError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultErrorImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultErrorImplCopyWith<_$DefaultErrorImpl> get copyWith =>
      __$$DefaultErrorImplCopyWithImpl<_$DefaultErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error) defaultError,
    required TResult Function(Object? error) noInternet,
  }) {
    return defaultError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error)? defaultError,
    TResult? Function(Object? error)? noInternet,
  }) {
    return defaultError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error)? defaultError,
    TResult Function(Object? error)? noInternet,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternet value) noInternet,
  }) {
    return defaultError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultError value)? defaultError,
    TResult? Function(NoInternet value)? noInternet,
  }) {
    return defaultError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError(this);
    }
    return orElse();
  }
}

abstract class DefaultError implements CompaniesFailure {
  const factory DefaultError({final Object? error}) = _$DefaultErrorImpl;

  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$DefaultErrorImplCopyWith<_$DefaultErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoInternetImplCopyWith<$Res>
    implements $CompaniesFailureCopyWith<$Res> {
  factory _$$NoInternetImplCopyWith(
          _$NoInternetImpl value, $Res Function(_$NoInternetImpl) then) =
      __$$NoInternetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? error});
}

/// @nodoc
class __$$NoInternetImplCopyWithImpl<$Res>
    extends _$CompaniesFailureCopyWithImpl<$Res, _$NoInternetImpl>
    implements _$$NoInternetImplCopyWith<$Res> {
  __$$NoInternetImplCopyWithImpl(
      _$NoInternetImpl _value, $Res Function(_$NoInternetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$NoInternetImpl(
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$NoInternetImpl implements NoInternet {
  const _$NoInternetImpl({this.error});

  @override
  final Object? error;

  @override
  String toString() {
    return 'CompaniesFailure.noInternet(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoInternetImpl &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoInternetImplCopyWith<_$NoInternetImpl> get copyWith =>
      __$$NoInternetImplCopyWithImpl<_$NoInternetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? error) defaultError,
    required TResult Function(Object? error) noInternet,
  }) {
    return noInternet(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? error)? defaultError,
    TResult? Function(Object? error)? noInternet,
  }) {
    return noInternet?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? error)? defaultError,
    TResult Function(Object? error)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(NoInternet value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DefaultError value)? defaultError,
    TResult? Function(NoInternet value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DefaultError value)? defaultError,
    TResult Function(NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class NoInternet implements CompaniesFailure {
  const factory NoInternet({final Object? error}) = _$NoInternetImpl;

  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$NoInternetImplCopyWith<_$NoInternetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
