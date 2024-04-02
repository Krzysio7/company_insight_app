// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String symbol) removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? removeFromFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) init,
    required TResult Function(RemoveFromFavorite value) removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? init,
    TResult? Function(RemoveFromFavorite value)? removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? init,
    TResult Function(RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeImplCopyWith<$Res> {
  factory _$$InitializeImplCopyWith(
          _$InitializeImpl value, $Res Function(_$InitializeImpl) then) =
      __$$InitializeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$InitializeImpl>
    implements _$$InitializeImplCopyWith<$Res> {
  __$$InitializeImplCopyWithImpl(
      _$InitializeImpl _value, $Res Function(_$InitializeImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeImpl implements Initialize {
  const _$InitializeImpl();

  @override
  String toString() {
    return 'FavoritesEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String symbol) removeFromFavorite,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? removeFromFavorite,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) init,
    required TResult Function(RemoveFromFavorite value) removeFromFavorite,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? init,
    TResult? Function(RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? init,
    TResult Function(RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Initialize implements FavoritesEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$RemoveFromFavoriteImplCopyWith<$Res> {
  factory _$$RemoveFromFavoriteImplCopyWith(_$RemoveFromFavoriteImpl value,
          $Res Function(_$RemoveFromFavoriteImpl) then) =
      __$$RemoveFromFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$RemoveFromFavoriteImplCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$RemoveFromFavoriteImpl>
    implements _$$RemoveFromFavoriteImplCopyWith<$Res> {
  __$$RemoveFromFavoriteImplCopyWithImpl(_$RemoveFromFavoriteImpl _value,
      $Res Function(_$RemoveFromFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$RemoveFromFavoriteImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromFavoriteImpl implements RemoveFromFavorite {
  const _$RemoveFromFavoriteImpl({required this.symbol});

  @override
  final String symbol;

  @override
  String toString() {
    return 'FavoritesEvent.removeFromFavorite(symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromFavoriteImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromFavoriteImplCopyWith<_$RemoveFromFavoriteImpl> get copyWith =>
      __$$RemoveFromFavoriteImplCopyWithImpl<_$RemoveFromFavoriteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String symbol) removeFromFavorite,
  }) {
    return removeFromFavorite(symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String symbol)? removeFromFavorite,
  }) {
    return removeFromFavorite?.call(symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String symbol)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (removeFromFavorite != null) {
      return removeFromFavorite(symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) init,
    required TResult Function(RemoveFromFavorite value) removeFromFavorite,
  }) {
    return removeFromFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? init,
    TResult? Function(RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return removeFromFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? init,
    TResult Function(RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (removeFromFavorite != null) {
      return removeFromFavorite(this);
    }
    return orElse();
  }
}

abstract class RemoveFromFavorite implements FavoritesEvent {
  const factory RemoveFromFavorite({required final String symbol}) =
      _$RemoveFromFavoriteImpl;

  String get symbol;
  @JsonKey(ignore: true)
  _$$RemoveFromFavoriteImplCopyWith<_$RemoveFromFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Company> companies) loaded,
    required TResult Function(FavoritesFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Company> companies)? loaded,
    TResult? Function(FavoritesFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Company> companies)? loaded,
    TResult Function(FavoritesFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateLoaded value) loaded,
    required TResult Function(FavoritesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateLoaded value)? loaded,
    TResult? Function(FavoritesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateLoaded value)? loaded,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FavoritesStateLoadingImplCopyWith<$Res> {
  factory _$$FavoritesStateLoadingImplCopyWith(
          _$FavoritesStateLoadingImpl value,
          $Res Function(_$FavoritesStateLoadingImpl) then) =
      __$$FavoritesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FavoritesStateLoadingImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateLoadingImpl>
    implements _$$FavoritesStateLoadingImplCopyWith<$Res> {
  __$$FavoritesStateLoadingImplCopyWithImpl(_$FavoritesStateLoadingImpl _value,
      $Res Function(_$FavoritesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FavoritesStateLoadingImpl implements FavoritesStateLoading {
  const _$FavoritesStateLoadingImpl();

  @override
  String toString() {
    return 'FavoritesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Company> companies) loaded,
    required TResult Function(FavoritesFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Company> companies)? loaded,
    TResult? Function(FavoritesFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Company> companies)? loaded,
    TResult Function(FavoritesFailure failure)? error,
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
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateLoaded value) loaded,
    required TResult Function(FavoritesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateLoaded value)? loaded,
    TResult? Function(FavoritesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateLoaded value)? loaded,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateLoading implements FavoritesState {
  const factory FavoritesStateLoading() = _$FavoritesStateLoadingImpl;
}

/// @nodoc
abstract class _$$FavoritesStateLoadedImplCopyWith<$Res> {
  factory _$$FavoritesStateLoadedImplCopyWith(_$FavoritesStateLoadedImpl value,
          $Res Function(_$FavoritesStateLoadedImpl) then) =
      __$$FavoritesStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Company> companies});
}

/// @nodoc
class __$$FavoritesStateLoadedImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateLoadedImpl>
    implements _$$FavoritesStateLoadedImplCopyWith<$Res> {
  __$$FavoritesStateLoadedImplCopyWithImpl(_$FavoritesStateLoadedImpl _value,
      $Res Function(_$FavoritesStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companies = null,
  }) {
    return _then(_$FavoritesStateLoadedImpl(
      null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$FavoritesStateLoadedImpl implements FavoritesStateLoaded {
  const _$FavoritesStateLoadedImpl(final List<Company> companies)
      : _companies = companies;

  final List<Company> _companies;
  @override
  List<Company> get companies {
    if (_companies is EqualUnmodifiableListView) return _companies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companies);
  }

  @override
  String toString() {
    return 'FavoritesState.loaded(companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_companies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateLoadedImplCopyWith<_$FavoritesStateLoadedImpl>
      get copyWith =>
          __$$FavoritesStateLoadedImplCopyWithImpl<_$FavoritesStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Company> companies) loaded,
    required TResult Function(FavoritesFailure failure) error,
  }) {
    return loaded(companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Company> companies)? loaded,
    TResult? Function(FavoritesFailure failure)? error,
  }) {
    return loaded?.call(companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Company> companies)? loaded,
    TResult Function(FavoritesFailure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(companies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateLoaded value) loaded,
    required TResult Function(FavoritesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateLoaded value)? loaded,
    TResult? Function(FavoritesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateLoaded value)? loaded,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateLoaded implements FavoritesState {
  const factory FavoritesStateLoaded(final List<Company> companies) =
      _$FavoritesStateLoadedImpl;

  List<Company> get companies;
  @JsonKey(ignore: true)
  _$$FavoritesStateLoadedImplCopyWith<_$FavoritesStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoritesStateErrorImplCopyWith<$Res> {
  factory _$$FavoritesStateErrorImplCopyWith(_$FavoritesStateErrorImpl value,
          $Res Function(_$FavoritesStateErrorImpl) then) =
      __$$FavoritesStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FavoritesFailure failure});

  $FavoritesFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FavoritesStateErrorImplCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$FavoritesStateErrorImpl>
    implements _$$FavoritesStateErrorImplCopyWith<$Res> {
  __$$FavoritesStateErrorImplCopyWithImpl(_$FavoritesStateErrorImpl _value,
      $Res Function(_$FavoritesStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FavoritesStateErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as FavoritesFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FavoritesFailureCopyWith<$Res> get failure {
    return $FavoritesFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FavoritesStateErrorImpl implements FavoritesStateError {
  const _$FavoritesStateErrorImpl(this.failure);

  @override
  final FavoritesFailure failure;

  @override
  String toString() {
    return 'FavoritesState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoritesStateErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoritesStateErrorImplCopyWith<_$FavoritesStateErrorImpl> get copyWith =>
      __$$FavoritesStateErrorImplCopyWithImpl<_$FavoritesStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Company> companies) loaded,
    required TResult Function(FavoritesFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Company> companies)? loaded,
    TResult? Function(FavoritesFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Company> companies)? loaded,
    TResult Function(FavoritesFailure failure)? error,
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
    required TResult Function(FavoritesStateLoading value) loading,
    required TResult Function(FavoritesStateLoaded value) loaded,
    required TResult Function(FavoritesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoritesStateLoading value)? loading,
    TResult? Function(FavoritesStateLoaded value)? loaded,
    TResult? Function(FavoritesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoritesStateLoading value)? loading,
    TResult Function(FavoritesStateLoaded value)? loaded,
    TResult Function(FavoritesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateError implements FavoritesState {
  const factory FavoritesStateError(final FavoritesFailure failure) =
      _$FavoritesStateErrorImpl;

  FavoritesFailure get failure;
  @JsonKey(ignore: true)
  _$$FavoritesStateErrorImplCopyWith<_$FavoritesStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
