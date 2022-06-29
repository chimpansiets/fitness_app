// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        registerEmailAndPasswordUseCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerEmailAndPasswordUseCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerEmailAndPasswordUseCase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailAndPasswordUseCase value)
        registerEmailAndPasswordUseCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterEmailAndPasswordUseCase value)?
        registerEmailAndPasswordUseCase,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailAndPasswordUseCase value)?
        registerEmailAndPasswordUseCase,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationEventCopyWith<AuthenticationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$RegisterEmailAndPasswordUseCaseCopyWith<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  factory _$$RegisterEmailAndPasswordUseCaseCopyWith(
          _$RegisterEmailAndPasswordUseCase value,
          $Res Function(_$RegisterEmailAndPasswordUseCase) then) =
      __$$RegisterEmailAndPasswordUseCaseCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password});
}

/// @nodoc
class __$$RegisterEmailAndPasswordUseCaseCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$RegisterEmailAndPasswordUseCaseCopyWith<$Res> {
  __$$RegisterEmailAndPasswordUseCaseCopyWithImpl(
      _$RegisterEmailAndPasswordUseCase _value,
      $Res Function(_$RegisterEmailAndPasswordUseCase) _then)
      : super(_value, (v) => _then(v as _$RegisterEmailAndPasswordUseCase));

  @override
  _$RegisterEmailAndPasswordUseCase get _value =>
      super._value as _$RegisterEmailAndPasswordUseCase;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$RegisterEmailAndPasswordUseCase(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterEmailAndPasswordUseCase
    implements RegisterEmailAndPasswordUseCase {
  const _$RegisterEmailAndPasswordUseCase(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationEvent.registerEmailAndPasswordUseCase(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterEmailAndPasswordUseCase &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$RegisterEmailAndPasswordUseCaseCopyWith<_$RegisterEmailAndPasswordUseCase>
      get copyWith => __$$RegisterEmailAndPasswordUseCaseCopyWithImpl<
          _$RegisterEmailAndPasswordUseCase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        registerEmailAndPasswordUseCase,
  }) {
    return registerEmailAndPasswordUseCase(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerEmailAndPasswordUseCase,
  }) {
    return registerEmailAndPasswordUseCase?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerEmailAndPasswordUseCase,
    required TResult orElse(),
  }) {
    if (registerEmailAndPasswordUseCase != null) {
      return registerEmailAndPasswordUseCase(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterEmailAndPasswordUseCase value)
        registerEmailAndPasswordUseCase,
  }) {
    return registerEmailAndPasswordUseCase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RegisterEmailAndPasswordUseCase value)?
        registerEmailAndPasswordUseCase,
  }) {
    return registerEmailAndPasswordUseCase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterEmailAndPasswordUseCase value)?
        registerEmailAndPasswordUseCase,
    required TResult orElse(),
  }) {
    if (registerEmailAndPasswordUseCase != null) {
      return registerEmailAndPasswordUseCase(this);
    }
    return orElse();
  }
}

abstract class RegisterEmailAndPasswordUseCase implements AuthenticationEvent {
  const factory RegisterEmailAndPasswordUseCase(
          final String email, final String password) =
      _$RegisterEmailAndPasswordUseCase;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$RegisterEmailAndPasswordUseCaseCopyWith<_$RegisterEmailAndPasswordUseCase>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$$_AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationStateCopyWith(_$_AuthenticationState value,
          $Res Function(_$_AuthenticationState) then) =
      __$$_AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_AuthenticationStateCopyWith<$Res> {
  __$$_AuthenticationStateCopyWithImpl(_$_AuthenticationState _value,
      $Res Function(_$_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _$_AuthenticationState));

  @override
  _$_AuthenticationState get _value => super._value as _$_AuthenticationState;
}

/// @nodoc

class _$_AuthenticationState implements _AuthenticationState {
  const _$_AuthenticationState();

  @override
  String toString() {
    return 'AuthenticationState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthenticationState);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState() = _$_AuthenticationState;
}
