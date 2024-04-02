// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'companies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CompaniesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) textChanged,
    required TResult Function(String symbol) addToFavorite,
    required TResult Function(String symbol) removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String text)? textChanged,
    TResult? Function(String symbol)? addToFavorite,
    TResult? Function(String symbol)? removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? textChanged,
    TResult Function(String symbol)? addToFavorite,
    TResult Function(String symbol)? removeFromFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) init,
    required TResult Function(TextChanged value) textChanged,
    required TResult Function(AddToFavorite value) addToFavorite,
    required TResult Function(RemoveFromFavorite value) removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? init,
    TResult? Function(TextChanged value)? textChanged,
    TResult? Function(AddToFavorite value)? addToFavorite,
    TResult? Function(RemoveFromFavorite value)? removeFromFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? init,
    TResult Function(TextChanged value)? textChanged,
    TResult Function(AddToFavorite value)? addToFavorite,
    TResult Function(RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesEventCopyWith<$Res> {
  factory $CompaniesEventCopyWith(
          CompaniesEvent value, $Res Function(CompaniesEvent) then) =
      _$CompaniesEventCopyWithImpl<$Res, CompaniesEvent>;
}

/// @nodoc
class _$CompaniesEventCopyWithImpl<$Res, $Val extends CompaniesEvent>
    implements $CompaniesEventCopyWith<$Res> {
  _$CompaniesEventCopyWithImpl(this._value, this._then);

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
    extends _$CompaniesEventCopyWithImpl<$Res, _$InitializeImpl>
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
    return 'CompaniesEvent.init()';
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
    required TResult Function(String text) textChanged,
    required TResult Function(String symbol) addToFavorite,
    required TResult Function(String symbol) removeFromFavorite,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String text)? textChanged,
    TResult? Function(String symbol)? addToFavorite,
    TResult? Function(String symbol)? removeFromFavorite,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? textChanged,
    TResult Function(String symbol)? addToFavorite,
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
    required TResult Function(TextChanged value) textChanged,
    required TResult Function(AddToFavorite value) addToFavorite,
    required TResult Function(RemoveFromFavorite value) removeFromFavorite,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? init,
    TResult? Function(TextChanged value)? textChanged,
    TResult? Function(AddToFavorite value)? addToFavorite,
    TResult? Function(RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? init,
    TResult Function(TextChanged value)? textChanged,
    TResult Function(AddToFavorite value)? addToFavorite,
    TResult Function(RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Initialize implements CompaniesEvent {
  const factory Initialize() = _$InitializeImpl;
}

/// @nodoc
abstract class _$$TextChangedImplCopyWith<$Res> {
  factory _$$TextChangedImplCopyWith(
          _$TextChangedImpl value, $Res Function(_$TextChangedImpl) then) =
      __$$TextChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$TextChangedImplCopyWithImpl<$Res>
    extends _$CompaniesEventCopyWithImpl<$Res, _$TextChangedImpl>
    implements _$$TextChangedImplCopyWith<$Res> {
  __$$TextChangedImplCopyWithImpl(
      _$TextChangedImpl _value, $Res Function(_$TextChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$TextChangedImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextChangedImpl implements TextChanged {
  const _$TextChangedImpl({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'CompaniesEvent.textChanged(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextChangedImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TextChangedImplCopyWith<_$TextChangedImpl> get copyWith =>
      __$$TextChangedImplCopyWithImpl<_$TextChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) textChanged,
    required TResult Function(String symbol) addToFavorite,
    required TResult Function(String symbol) removeFromFavorite,
  }) {
    return textChanged(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String text)? textChanged,
    TResult? Function(String symbol)? addToFavorite,
    TResult? Function(String symbol)? removeFromFavorite,
  }) {
    return textChanged?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? textChanged,
    TResult Function(String symbol)? addToFavorite,
    TResult Function(String symbol)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) init,
    required TResult Function(TextChanged value) textChanged,
    required TResult Function(AddToFavorite value) addToFavorite,
    required TResult Function(RemoveFromFavorite value) removeFromFavorite,
  }) {
    return textChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? init,
    TResult? Function(TextChanged value)? textChanged,
    TResult? Function(AddToFavorite value)? addToFavorite,
    TResult? Function(RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return textChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? init,
    TResult Function(TextChanged value)? textChanged,
    TResult Function(AddToFavorite value)? addToFavorite,
    TResult Function(RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (textChanged != null) {
      return textChanged(this);
    }
    return orElse();
  }
}

abstract class TextChanged implements CompaniesEvent {
  const factory TextChanged({required final String text}) = _$TextChangedImpl;

  String get text;
  @JsonKey(ignore: true)
  _$$TextChangedImplCopyWith<_$TextChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddToFavoriteImplCopyWith<$Res> {
  factory _$$AddToFavoriteImplCopyWith(
          _$AddToFavoriteImpl value, $Res Function(_$AddToFavoriteImpl) then) =
      __$$AddToFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String symbol});
}

/// @nodoc
class __$$AddToFavoriteImplCopyWithImpl<$Res>
    extends _$CompaniesEventCopyWithImpl<$Res, _$AddToFavoriteImpl>
    implements _$$AddToFavoriteImplCopyWith<$Res> {
  __$$AddToFavoriteImplCopyWithImpl(
      _$AddToFavoriteImpl _value, $Res Function(_$AddToFavoriteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
  }) {
    return _then(_$AddToFavoriteImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddToFavoriteImpl implements AddToFavorite {
  const _$AddToFavoriteImpl({required this.symbol});

  @override
  final String symbol;

  @override
  String toString() {
    return 'CompaniesEvent.addToFavorite(symbol: $symbol)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddToFavoriteImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddToFavoriteImplCopyWith<_$AddToFavoriteImpl> get copyWith =>
      __$$AddToFavoriteImplCopyWithImpl<_$AddToFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String text) textChanged,
    required TResult Function(String symbol) addToFavorite,
    required TResult Function(String symbol) removeFromFavorite,
  }) {
    return addToFavorite(symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String text)? textChanged,
    TResult? Function(String symbol)? addToFavorite,
    TResult? Function(String symbol)? removeFromFavorite,
  }) {
    return addToFavorite?.call(symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? textChanged,
    TResult Function(String symbol)? addToFavorite,
    TResult Function(String symbol)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (addToFavorite != null) {
      return addToFavorite(symbol);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) init,
    required TResult Function(TextChanged value) textChanged,
    required TResult Function(AddToFavorite value) addToFavorite,
    required TResult Function(RemoveFromFavorite value) removeFromFavorite,
  }) {
    return addToFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? init,
    TResult? Function(TextChanged value)? textChanged,
    TResult? Function(AddToFavorite value)? addToFavorite,
    TResult? Function(RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return addToFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? init,
    TResult Function(TextChanged value)? textChanged,
    TResult Function(AddToFavorite value)? addToFavorite,
    TResult Function(RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (addToFavorite != null) {
      return addToFavorite(this);
    }
    return orElse();
  }
}

abstract class AddToFavorite implements CompaniesEvent {
  const factory AddToFavorite({required final String symbol}) =
      _$AddToFavoriteImpl;

  String get symbol;
  @JsonKey(ignore: true)
  _$$AddToFavoriteImplCopyWith<_$AddToFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$CompaniesEventCopyWithImpl<$Res, _$RemoveFromFavoriteImpl>
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
    return 'CompaniesEvent.removeFromFavorite(symbol: $symbol)';
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
    required TResult Function(String text) textChanged,
    required TResult Function(String symbol) addToFavorite,
    required TResult Function(String symbol) removeFromFavorite,
  }) {
    return removeFromFavorite(symbol);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String text)? textChanged,
    TResult? Function(String symbol)? addToFavorite,
    TResult? Function(String symbol)? removeFromFavorite,
  }) {
    return removeFromFavorite?.call(symbol);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String text)? textChanged,
    TResult Function(String symbol)? addToFavorite,
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
    required TResult Function(TextChanged value) textChanged,
    required TResult Function(AddToFavorite value) addToFavorite,
    required TResult Function(RemoveFromFavorite value) removeFromFavorite,
  }) {
    return removeFromFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? init,
    TResult? Function(TextChanged value)? textChanged,
    TResult? Function(AddToFavorite value)? addToFavorite,
    TResult? Function(RemoveFromFavorite value)? removeFromFavorite,
  }) {
    return removeFromFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? init,
    TResult Function(TextChanged value)? textChanged,
    TResult Function(AddToFavorite value)? addToFavorite,
    TResult Function(RemoveFromFavorite value)? removeFromFavorite,
    required TResult orElse(),
  }) {
    if (removeFromFavorite != null) {
      return removeFromFavorite(this);
    }
    return orElse();
  }
}

abstract class RemoveFromFavorite implements CompaniesEvent {
  const factory RemoveFromFavorite({required final String symbol}) =
      _$RemoveFromFavoriteImpl;

  String get symbol;
  @JsonKey(ignore: true)
  _$$RemoveFromFavoriteImplCopyWith<_$RemoveFromFavoriteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompaniesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Company> companies) loaded,
    required TResult Function(CompaniesFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Company> companies)? loaded,
    TResult? Function(CompaniesFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Company> companies)? loaded,
    TResult Function(CompaniesFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompaniesStateInitial value) initial,
    required TResult Function(CompaniesStateLoading value) loading,
    required TResult Function(CompaniesStateLoaded value) loaded,
    required TResult Function(CompaniesStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompaniesStateInitial value)? initial,
    TResult? Function(CompaniesStateLoading value)? loading,
    TResult? Function(CompaniesStateLoaded value)? loaded,
    TResult? Function(CompaniesStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompaniesStateInitial value)? initial,
    TResult Function(CompaniesStateLoading value)? loading,
    TResult Function(CompaniesStateLoaded value)? loaded,
    TResult Function(CompaniesStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompaniesStateCopyWith<$Res> {
  factory $CompaniesStateCopyWith(
          CompaniesState value, $Res Function(CompaniesState) then) =
      _$CompaniesStateCopyWithImpl<$Res, CompaniesState>;
}

/// @nodoc
class _$CompaniesStateCopyWithImpl<$Res, $Val extends CompaniesState>
    implements $CompaniesStateCopyWith<$Res> {
  _$CompaniesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CompaniesStateInitialImplCopyWith<$Res> {
  factory _$$CompaniesStateInitialImplCopyWith(
          _$CompaniesStateInitialImpl value,
          $Res Function(_$CompaniesStateInitialImpl) then) =
      __$$CompaniesStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompaniesStateInitialImplCopyWithImpl<$Res>
    extends _$CompaniesStateCopyWithImpl<$Res, _$CompaniesStateInitialImpl>
    implements _$$CompaniesStateInitialImplCopyWith<$Res> {
  __$$CompaniesStateInitialImplCopyWithImpl(_$CompaniesStateInitialImpl _value,
      $Res Function(_$CompaniesStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompaniesStateInitialImpl implements CompaniesStateInitial {
  const _$CompaniesStateInitialImpl();

  @override
  String toString() {
    return 'CompaniesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompaniesStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Company> companies) loaded,
    required TResult Function(CompaniesFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Company> companies)? loaded,
    TResult? Function(CompaniesFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Company> companies)? loaded,
    TResult Function(CompaniesFailure failure)? error,
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
    required TResult Function(CompaniesStateInitial value) initial,
    required TResult Function(CompaniesStateLoading value) loading,
    required TResult Function(CompaniesStateLoaded value) loaded,
    required TResult Function(CompaniesStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompaniesStateInitial value)? initial,
    TResult? Function(CompaniesStateLoading value)? loading,
    TResult? Function(CompaniesStateLoaded value)? loaded,
    TResult? Function(CompaniesStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompaniesStateInitial value)? initial,
    TResult Function(CompaniesStateLoading value)? loading,
    TResult Function(CompaniesStateLoaded value)? loaded,
    TResult Function(CompaniesStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CompaniesStateInitial implements CompaniesState {
  const factory CompaniesStateInitial() = _$CompaniesStateInitialImpl;
}

/// @nodoc
abstract class _$$CompaniesStateLoadingImplCopyWith<$Res> {
  factory _$$CompaniesStateLoadingImplCopyWith(
          _$CompaniesStateLoadingImpl value,
          $Res Function(_$CompaniesStateLoadingImpl) then) =
      __$$CompaniesStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompaniesStateLoadingImplCopyWithImpl<$Res>
    extends _$CompaniesStateCopyWithImpl<$Res, _$CompaniesStateLoadingImpl>
    implements _$$CompaniesStateLoadingImplCopyWith<$Res> {
  __$$CompaniesStateLoadingImplCopyWithImpl(_$CompaniesStateLoadingImpl _value,
      $Res Function(_$CompaniesStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CompaniesStateLoadingImpl implements CompaniesStateLoading {
  const _$CompaniesStateLoadingImpl();

  @override
  String toString() {
    return 'CompaniesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompaniesStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Company> companies) loaded,
    required TResult Function(CompaniesFailure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Company> companies)? loaded,
    TResult? Function(CompaniesFailure failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Company> companies)? loaded,
    TResult Function(CompaniesFailure failure)? error,
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
    required TResult Function(CompaniesStateInitial value) initial,
    required TResult Function(CompaniesStateLoading value) loading,
    required TResult Function(CompaniesStateLoaded value) loaded,
    required TResult Function(CompaniesStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompaniesStateInitial value)? initial,
    TResult? Function(CompaniesStateLoading value)? loading,
    TResult? Function(CompaniesStateLoaded value)? loaded,
    TResult? Function(CompaniesStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompaniesStateInitial value)? initial,
    TResult Function(CompaniesStateLoading value)? loading,
    TResult Function(CompaniesStateLoaded value)? loaded,
    TResult Function(CompaniesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CompaniesStateLoading implements CompaniesState {
  const factory CompaniesStateLoading() = _$CompaniesStateLoadingImpl;
}

/// @nodoc
abstract class _$$CompaniesStateLoadedImplCopyWith<$Res> {
  factory _$$CompaniesStateLoadedImplCopyWith(_$CompaniesStateLoadedImpl value,
          $Res Function(_$CompaniesStateLoadedImpl) then) =
      __$$CompaniesStateLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Company> companies});
}

/// @nodoc
class __$$CompaniesStateLoadedImplCopyWithImpl<$Res>
    extends _$CompaniesStateCopyWithImpl<$Res, _$CompaniesStateLoadedImpl>
    implements _$$CompaniesStateLoadedImplCopyWith<$Res> {
  __$$CompaniesStateLoadedImplCopyWithImpl(_$CompaniesStateLoadedImpl _value,
      $Res Function(_$CompaniesStateLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companies = null,
  }) {
    return _then(_$CompaniesStateLoadedImpl(
      null == companies
          ? _value._companies
          : companies // ignore: cast_nullable_to_non_nullable
              as List<Company>,
    ));
  }
}

/// @nodoc

class _$CompaniesStateLoadedImpl implements CompaniesStateLoaded {
  const _$CompaniesStateLoadedImpl(final List<Company> companies)
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
    return 'CompaniesState.loaded(companies: $companies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompaniesStateLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._companies, _companies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_companies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompaniesStateLoadedImplCopyWith<_$CompaniesStateLoadedImpl>
      get copyWith =>
          __$$CompaniesStateLoadedImplCopyWithImpl<_$CompaniesStateLoadedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Company> companies) loaded,
    required TResult Function(CompaniesFailure failure) error,
  }) {
    return loaded(companies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Company> companies)? loaded,
    TResult? Function(CompaniesFailure failure)? error,
  }) {
    return loaded?.call(companies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Company> companies)? loaded,
    TResult Function(CompaniesFailure failure)? error,
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
    required TResult Function(CompaniesStateInitial value) initial,
    required TResult Function(CompaniesStateLoading value) loading,
    required TResult Function(CompaniesStateLoaded value) loaded,
    required TResult Function(CompaniesStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompaniesStateInitial value)? initial,
    TResult? Function(CompaniesStateLoading value)? loading,
    TResult? Function(CompaniesStateLoaded value)? loaded,
    TResult? Function(CompaniesStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompaniesStateInitial value)? initial,
    TResult Function(CompaniesStateLoading value)? loading,
    TResult Function(CompaniesStateLoaded value)? loaded,
    TResult Function(CompaniesStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CompaniesStateLoaded implements CompaniesState {
  const factory CompaniesStateLoaded(final List<Company> companies) =
      _$CompaniesStateLoadedImpl;

  List<Company> get companies;
  @JsonKey(ignore: true)
  _$$CompaniesStateLoadedImplCopyWith<_$CompaniesStateLoadedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompaniesStateErrorImplCopyWith<$Res> {
  factory _$$CompaniesStateErrorImplCopyWith(_$CompaniesStateErrorImpl value,
          $Res Function(_$CompaniesStateErrorImpl) then) =
      __$$CompaniesStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CompaniesFailure failure});

  $CompaniesFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CompaniesStateErrorImplCopyWithImpl<$Res>
    extends _$CompaniesStateCopyWithImpl<$Res, _$CompaniesStateErrorImpl>
    implements _$$CompaniesStateErrorImplCopyWith<$Res> {
  __$$CompaniesStateErrorImplCopyWithImpl(_$CompaniesStateErrorImpl _value,
      $Res Function(_$CompaniesStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$CompaniesStateErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as CompaniesFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CompaniesFailureCopyWith<$Res> get failure {
    return $CompaniesFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$CompaniesStateErrorImpl implements CompaniesStateError {
  const _$CompaniesStateErrorImpl(this.failure);

  @override
  final CompaniesFailure failure;

  @override
  String toString() {
    return 'CompaniesState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompaniesStateErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompaniesStateErrorImplCopyWith<_$CompaniesStateErrorImpl> get copyWith =>
      __$$CompaniesStateErrorImplCopyWithImpl<_$CompaniesStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Company> companies) loaded,
    required TResult Function(CompaniesFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Company> companies)? loaded,
    TResult? Function(CompaniesFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Company> companies)? loaded,
    TResult Function(CompaniesFailure failure)? error,
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
    required TResult Function(CompaniesStateInitial value) initial,
    required TResult Function(CompaniesStateLoading value) loading,
    required TResult Function(CompaniesStateLoaded value) loaded,
    required TResult Function(CompaniesStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompaniesStateInitial value)? initial,
    TResult? Function(CompaniesStateLoading value)? loading,
    TResult? Function(CompaniesStateLoaded value)? loaded,
    TResult? Function(CompaniesStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompaniesStateInitial value)? initial,
    TResult Function(CompaniesStateLoading value)? loading,
    TResult Function(CompaniesStateLoaded value)? loaded,
    TResult Function(CompaniesStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CompaniesStateError implements CompaniesState {
  const factory CompaniesStateError(final CompaniesFailure failure) =
      _$CompaniesStateErrorImpl;

  CompaniesFailure get failure;
  @JsonKey(ignore: true)
  _$$CompaniesStateErrorImplCopyWith<_$CompaniesStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
