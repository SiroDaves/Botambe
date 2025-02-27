// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserAuthEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signin,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) passreset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signin,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? passreset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signin,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? passreset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAuthSigninNow value) signin,
    required TResult Function(UserAuthSignupNow value) signup,
    required TResult Function(UserAuthPasswordReset value) passreset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthSigninNow value)? signin,
    TResult? Function(UserAuthSignupNow value)? signup,
    TResult? Function(UserAuthPasswordReset value)? passreset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthSigninNow value)? signin,
    TResult Function(UserAuthSignupNow value)? signup,
    TResult Function(UserAuthPasswordReset value)? passreset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserAuthEventCopyWith<UserAuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthEventCopyWith<$Res> {
  factory $UserAuthEventCopyWith(
          UserAuthEvent value, $Res Function(UserAuthEvent) then) =
      _$UserAuthEventCopyWithImpl<$Res, UserAuthEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$UserAuthEventCopyWithImpl<$Res, $Val extends UserAuthEvent>
    implements $UserAuthEventCopyWith<$Res> {
  _$UserAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAuthSigninNowImplCopyWith<$Res>
    implements $UserAuthEventCopyWith<$Res> {
  factory _$$UserAuthSigninNowImplCopyWith(_$UserAuthSigninNowImpl value,
          $Res Function(_$UserAuthSigninNowImpl) then) =
      __$$UserAuthSigninNowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$UserAuthSigninNowImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$UserAuthSigninNowImpl>
    implements _$$UserAuthSigninNowImplCopyWith<$Res> {
  __$$UserAuthSigninNowImplCopyWithImpl(_$UserAuthSigninNowImpl _value,
      $Res Function(_$UserAuthSigninNowImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserAuthSigninNowImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAuthSigninNowImpl implements UserAuthSigninNow {
  const _$UserAuthSigninNowImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthEvent.signin(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthSigninNowImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthSigninNowImplCopyWith<_$UserAuthSigninNowImpl> get copyWith =>
      __$$UserAuthSigninNowImplCopyWithImpl<_$UserAuthSigninNowImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signin,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) passreset,
  }) {
    return signin(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signin,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? passreset,
  }) {
    return signin?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signin,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? passreset,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAuthSigninNow value) signin,
    required TResult Function(UserAuthSignupNow value) signup,
    required TResult Function(UserAuthPasswordReset value) passreset,
  }) {
    return signin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthSigninNow value)? signin,
    TResult? Function(UserAuthSignupNow value)? signup,
    TResult? Function(UserAuthPasswordReset value)? passreset,
  }) {
    return signin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthSigninNow value)? signin,
    TResult Function(UserAuthSignupNow value)? signup,
    TResult Function(UserAuthPasswordReset value)? passreset,
    required TResult orElse(),
  }) {
    if (signin != null) {
      return signin(this);
    }
    return orElse();
  }
}

abstract class UserAuthSigninNow implements UserAuthEvent {
  const factory UserAuthSigninNow(final String email, final String password) =
      _$UserAuthSigninNowImpl;

  @override
  String get email;
  String get password;

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthSigninNowImplCopyWith<_$UserAuthSigninNowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAuthSignupNowImplCopyWith<$Res>
    implements $UserAuthEventCopyWith<$Res> {
  factory _$$UserAuthSignupNowImplCopyWith(_$UserAuthSignupNowImpl value,
          $Res Function(_$UserAuthSignupNowImpl) then) =
      __$$UserAuthSignupNowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$UserAuthSignupNowImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$UserAuthSignupNowImpl>
    implements _$$UserAuthSignupNowImplCopyWith<$Res> {
  __$$UserAuthSignupNowImplCopyWithImpl(_$UserAuthSignupNowImpl _value,
      $Res Function(_$UserAuthSignupNowImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$UserAuthSignupNowImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAuthSignupNowImpl implements UserAuthSignupNow {
  const _$UserAuthSignupNowImpl(this.name, this.email, this.password);

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'UserAuthEvent.signup(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthSignupNowImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthSignupNowImplCopyWith<_$UserAuthSignupNowImpl> get copyWith =>
      __$$UserAuthSignupNowImplCopyWithImpl<_$UserAuthSignupNowImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signin,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) passreset,
  }) {
    return signup(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signin,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? passreset,
  }) {
    return signup?.call(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signin,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? passreset,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAuthSigninNow value) signin,
    required TResult Function(UserAuthSignupNow value) signup,
    required TResult Function(UserAuthPasswordReset value) passreset,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthSigninNow value)? signin,
    TResult? Function(UserAuthSignupNow value)? signup,
    TResult? Function(UserAuthPasswordReset value)? passreset,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthSigninNow value)? signin,
    TResult Function(UserAuthSignupNow value)? signup,
    TResult Function(UserAuthPasswordReset value)? passreset,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class UserAuthSignupNow implements UserAuthEvent {
  const factory UserAuthSignupNow(
          final String name, final String email, final String password) =
      _$UserAuthSignupNowImpl;

  String get name;
  @override
  String get email;
  String get password;

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthSignupNowImplCopyWith<_$UserAuthSignupNowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserAuthPasswordResetImplCopyWith<$Res>
    implements $UserAuthEventCopyWith<$Res> {
  factory _$$UserAuthPasswordResetImplCopyWith(
          _$UserAuthPasswordResetImpl value,
          $Res Function(_$UserAuthPasswordResetImpl) then) =
      __$$UserAuthPasswordResetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$UserAuthPasswordResetImplCopyWithImpl<$Res>
    extends _$UserAuthEventCopyWithImpl<$Res, _$UserAuthPasswordResetImpl>
    implements _$$UserAuthPasswordResetImplCopyWith<$Res> {
  __$$UserAuthPasswordResetImplCopyWithImpl(_$UserAuthPasswordResetImpl _value,
      $Res Function(_$UserAuthPasswordResetImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$UserAuthPasswordResetImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAuthPasswordResetImpl implements UserAuthPasswordReset {
  const _$UserAuthPasswordResetImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'UserAuthEvent.passreset(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthPasswordResetImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthPasswordResetImplCopyWith<_$UserAuthPasswordResetImpl>
      get copyWith => __$$UserAuthPasswordResetImplCopyWithImpl<
          _$UserAuthPasswordResetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) signin,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) passreset,
  }) {
    return passreset(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? signin,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? passreset,
  }) {
    return passreset?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? signin,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? passreset,
    required TResult orElse(),
  }) {
    if (passreset != null) {
      return passreset(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAuthSigninNow value) signin,
    required TResult Function(UserAuthSignupNow value) signup,
    required TResult Function(UserAuthPasswordReset value) passreset,
  }) {
    return passreset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserAuthSigninNow value)? signin,
    TResult? Function(UserAuthSignupNow value)? signup,
    TResult? Function(UserAuthPasswordReset value)? passreset,
  }) {
    return passreset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAuthSigninNow value)? signin,
    TResult Function(UserAuthSignupNow value)? signup,
    TResult Function(UserAuthPasswordReset value)? passreset,
    required TResult orElse(),
  }) {
    if (passreset != null) {
      return passreset(this);
    }
    return orElse();
  }
}

abstract class UserAuthPasswordReset implements UserAuthEvent {
  const factory UserAuthPasswordReset(final String email) =
      _$UserAuthPasswordResetImpl;

  @override
  String get email;

  /// Create a copy of UserAuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthPasswordResetImplCopyWith<_$UserAuthPasswordResetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserAuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() signedin,
    required TResult Function() signedup,
    required TResult Function() passreset,
    required TResult Function(String feedback) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? signedin,
    TResult? Function()? signedup,
    TResult? Function()? passreset,
    TResult? Function(String feedback)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? signedin,
    TResult Function()? signedup,
    TResult Function()? passreset,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthState value) initial,
    required TResult Function(UserAuthLoadedState value) loaded,
    required TResult Function(UserAuthLoadingState value) loading,
    required TResult Function(UserAuthSuccessState value) success,
    required TResult Function(UserAuthSigninSuccessState value) signedin,
    required TResult Function(UserAuthSignupSuccessState value) signedup,
    required TResult Function(UserAuthPasswordResetState value) passreset,
    required TResult Function(UserAuthFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAuthState value)? initial,
    TResult? Function(UserAuthLoadedState value)? loaded,
    TResult? Function(UserAuthLoadingState value)? loading,
    TResult? Function(UserAuthSuccessState value)? success,
    TResult? Function(UserAuthSigninSuccessState value)? signedin,
    TResult? Function(UserAuthSignupSuccessState value)? signedup,
    TResult? Function(UserAuthPasswordResetState value)? passreset,
    TResult? Function(UserAuthFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthState value)? initial,
    TResult Function(UserAuthLoadedState value)? loaded,
    TResult Function(UserAuthLoadingState value)? loading,
    TResult Function(UserAuthSuccessState value)? success,
    TResult Function(UserAuthSigninSuccessState value)? signedin,
    TResult Function(UserAuthSignupSuccessState value)? signedup,
    TResult Function(UserAuthPasswordResetState value)? passreset,
    TResult Function(UserAuthFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthStateCopyWith<$Res> {
  factory $UserAuthStateCopyWith(
          UserAuthState value, $Res Function(UserAuthState) then) =
      _$UserAuthStateCopyWithImpl<$Res, UserAuthState>;
}

/// @nodoc
class _$UserAuthStateCopyWithImpl<$Res, $Val extends UserAuthState>
    implements $UserAuthStateCopyWith<$Res> {
  _$UserAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserAuthStateImplCopyWith<$Res> {
  factory _$$UserAuthStateImplCopyWith(
          _$UserAuthStateImpl value, $Res Function(_$UserAuthStateImpl) then) =
      __$$UserAuthStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthStateImpl>
    implements _$$UserAuthStateImplCopyWith<$Res> {
  __$$UserAuthStateImplCopyWithImpl(
      _$UserAuthStateImpl _value, $Res Function(_$UserAuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAuthStateImpl implements _UserAuthState {
  const _$UserAuthStateImpl();

  @override
  String toString() {
    return 'UserAuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserAuthStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() signedin,
    required TResult Function() signedup,
    required TResult Function() passreset,
    required TResult Function(String feedback) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? signedin,
    TResult? Function()? signedup,
    TResult? Function()? passreset,
    TResult? Function(String feedback)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? signedin,
    TResult Function()? signedup,
    TResult Function()? passreset,
    TResult Function(String feedback)? failure,
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
    required TResult Function(_UserAuthState value) initial,
    required TResult Function(UserAuthLoadedState value) loaded,
    required TResult Function(UserAuthLoadingState value) loading,
    required TResult Function(UserAuthSuccessState value) success,
    required TResult Function(UserAuthSigninSuccessState value) signedin,
    required TResult Function(UserAuthSignupSuccessState value) signedup,
    required TResult Function(UserAuthPasswordResetState value) passreset,
    required TResult Function(UserAuthFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAuthState value)? initial,
    TResult? Function(UserAuthLoadedState value)? loaded,
    TResult? Function(UserAuthLoadingState value)? loading,
    TResult? Function(UserAuthSuccessState value)? success,
    TResult? Function(UserAuthSigninSuccessState value)? signedin,
    TResult? Function(UserAuthSignupSuccessState value)? signedup,
    TResult? Function(UserAuthPasswordResetState value)? passreset,
    TResult? Function(UserAuthFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthState value)? initial,
    TResult Function(UserAuthLoadedState value)? loaded,
    TResult Function(UserAuthLoadingState value)? loading,
    TResult Function(UserAuthSuccessState value)? success,
    TResult Function(UserAuthSigninSuccessState value)? signedin,
    TResult Function(UserAuthSignupSuccessState value)? signedup,
    TResult Function(UserAuthPasswordResetState value)? passreset,
    TResult Function(UserAuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserAuthState implements UserAuthState {
  const factory _UserAuthState() = _$UserAuthStateImpl;
}

/// @nodoc
abstract class _$$UserAuthLoadedStateImplCopyWith<$Res> {
  factory _$$UserAuthLoadedStateImplCopyWith(_$UserAuthLoadedStateImpl value,
          $Res Function(_$UserAuthLoadedStateImpl) then) =
      __$$UserAuthLoadedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthLoadedStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthLoadedStateImpl>
    implements _$$UserAuthLoadedStateImplCopyWith<$Res> {
  __$$UserAuthLoadedStateImplCopyWithImpl(_$UserAuthLoadedStateImpl _value,
      $Res Function(_$UserAuthLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAuthLoadedStateImpl implements UserAuthLoadedState {
  const _$UserAuthLoadedStateImpl();

  @override
  String toString() {
    return 'UserAuthState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthLoadedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() signedin,
    required TResult Function() signedup,
    required TResult Function() passreset,
    required TResult Function(String feedback) failure,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? signedin,
    TResult? Function()? signedup,
    TResult? Function()? passreset,
    TResult? Function(String feedback)? failure,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? signedin,
    TResult Function()? signedup,
    TResult Function()? passreset,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthState value) initial,
    required TResult Function(UserAuthLoadedState value) loaded,
    required TResult Function(UserAuthLoadingState value) loading,
    required TResult Function(UserAuthSuccessState value) success,
    required TResult Function(UserAuthSigninSuccessState value) signedin,
    required TResult Function(UserAuthSignupSuccessState value) signedup,
    required TResult Function(UserAuthPasswordResetState value) passreset,
    required TResult Function(UserAuthFailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAuthState value)? initial,
    TResult? Function(UserAuthLoadedState value)? loaded,
    TResult? Function(UserAuthLoadingState value)? loading,
    TResult? Function(UserAuthSuccessState value)? success,
    TResult? Function(UserAuthSigninSuccessState value)? signedin,
    TResult? Function(UserAuthSignupSuccessState value)? signedup,
    TResult? Function(UserAuthPasswordResetState value)? passreset,
    TResult? Function(UserAuthFailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthState value)? initial,
    TResult Function(UserAuthLoadedState value)? loaded,
    TResult Function(UserAuthLoadingState value)? loading,
    TResult Function(UserAuthSuccessState value)? success,
    TResult Function(UserAuthSigninSuccessState value)? signedin,
    TResult Function(UserAuthSignupSuccessState value)? signedup,
    TResult Function(UserAuthPasswordResetState value)? passreset,
    TResult Function(UserAuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class UserAuthLoadedState implements UserAuthState {
  const factory UserAuthLoadedState() = _$UserAuthLoadedStateImpl;
}

/// @nodoc
abstract class _$$UserAuthLoadingStateImplCopyWith<$Res> {
  factory _$$UserAuthLoadingStateImplCopyWith(_$UserAuthLoadingStateImpl value,
          $Res Function(_$UserAuthLoadingStateImpl) then) =
      __$$UserAuthLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthLoadingStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthLoadingStateImpl>
    implements _$$UserAuthLoadingStateImplCopyWith<$Res> {
  __$$UserAuthLoadingStateImplCopyWithImpl(_$UserAuthLoadingStateImpl _value,
      $Res Function(_$UserAuthLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAuthLoadingStateImpl implements UserAuthLoadingState {
  const _$UserAuthLoadingStateImpl();

  @override
  String toString() {
    return 'UserAuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() signedin,
    required TResult Function() signedup,
    required TResult Function() passreset,
    required TResult Function(String feedback) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? signedin,
    TResult? Function()? signedup,
    TResult? Function()? passreset,
    TResult? Function(String feedback)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? signedin,
    TResult Function()? signedup,
    TResult Function()? passreset,
    TResult Function(String feedback)? failure,
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
    required TResult Function(_UserAuthState value) initial,
    required TResult Function(UserAuthLoadedState value) loaded,
    required TResult Function(UserAuthLoadingState value) loading,
    required TResult Function(UserAuthSuccessState value) success,
    required TResult Function(UserAuthSigninSuccessState value) signedin,
    required TResult Function(UserAuthSignupSuccessState value) signedup,
    required TResult Function(UserAuthPasswordResetState value) passreset,
    required TResult Function(UserAuthFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAuthState value)? initial,
    TResult? Function(UserAuthLoadedState value)? loaded,
    TResult? Function(UserAuthLoadingState value)? loading,
    TResult? Function(UserAuthSuccessState value)? success,
    TResult? Function(UserAuthSigninSuccessState value)? signedin,
    TResult? Function(UserAuthSignupSuccessState value)? signedup,
    TResult? Function(UserAuthPasswordResetState value)? passreset,
    TResult? Function(UserAuthFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthState value)? initial,
    TResult Function(UserAuthLoadedState value)? loaded,
    TResult Function(UserAuthLoadingState value)? loading,
    TResult Function(UserAuthSuccessState value)? success,
    TResult Function(UserAuthSigninSuccessState value)? signedin,
    TResult Function(UserAuthSignupSuccessState value)? signedup,
    TResult Function(UserAuthPasswordResetState value)? passreset,
    TResult Function(UserAuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserAuthLoadingState implements UserAuthState {
  const factory UserAuthLoadingState() = _$UserAuthLoadingStateImpl;
}

/// @nodoc
abstract class _$$UserAuthSuccessStateImplCopyWith<$Res> {
  factory _$$UserAuthSuccessStateImplCopyWith(_$UserAuthSuccessStateImpl value,
          $Res Function(_$UserAuthSuccessStateImpl) then) =
      __$$UserAuthSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthSuccessStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthSuccessStateImpl>
    implements _$$UserAuthSuccessStateImplCopyWith<$Res> {
  __$$UserAuthSuccessStateImplCopyWithImpl(_$UserAuthSuccessStateImpl _value,
      $Res Function(_$UserAuthSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAuthSuccessStateImpl implements UserAuthSuccessState {
  const _$UserAuthSuccessStateImpl();

  @override
  String toString() {
    return 'UserAuthState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() signedin,
    required TResult Function() signedup,
    required TResult Function() passreset,
    required TResult Function(String feedback) failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? signedin,
    TResult? Function()? signedup,
    TResult? Function()? passreset,
    TResult? Function(String feedback)? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? signedin,
    TResult Function()? signedup,
    TResult Function()? passreset,
    TResult Function(String feedback)? failure,
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
    required TResult Function(_UserAuthState value) initial,
    required TResult Function(UserAuthLoadedState value) loaded,
    required TResult Function(UserAuthLoadingState value) loading,
    required TResult Function(UserAuthSuccessState value) success,
    required TResult Function(UserAuthSigninSuccessState value) signedin,
    required TResult Function(UserAuthSignupSuccessState value) signedup,
    required TResult Function(UserAuthPasswordResetState value) passreset,
    required TResult Function(UserAuthFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAuthState value)? initial,
    TResult? Function(UserAuthLoadedState value)? loaded,
    TResult? Function(UserAuthLoadingState value)? loading,
    TResult? Function(UserAuthSuccessState value)? success,
    TResult? Function(UserAuthSigninSuccessState value)? signedin,
    TResult? Function(UserAuthSignupSuccessState value)? signedup,
    TResult? Function(UserAuthPasswordResetState value)? passreset,
    TResult? Function(UserAuthFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthState value)? initial,
    TResult Function(UserAuthLoadedState value)? loaded,
    TResult Function(UserAuthLoadingState value)? loading,
    TResult Function(UserAuthSuccessState value)? success,
    TResult Function(UserAuthSigninSuccessState value)? signedin,
    TResult Function(UserAuthSignupSuccessState value)? signedup,
    TResult Function(UserAuthPasswordResetState value)? passreset,
    TResult Function(UserAuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserAuthSuccessState implements UserAuthState {
  const factory UserAuthSuccessState() = _$UserAuthSuccessStateImpl;
}

/// @nodoc
abstract class _$$UserAuthSigninSuccessStateImplCopyWith<$Res> {
  factory _$$UserAuthSigninSuccessStateImplCopyWith(
          _$UserAuthSigninSuccessStateImpl value,
          $Res Function(_$UserAuthSigninSuccessStateImpl) then) =
      __$$UserAuthSigninSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthSigninSuccessStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthSigninSuccessStateImpl>
    implements _$$UserAuthSigninSuccessStateImplCopyWith<$Res> {
  __$$UserAuthSigninSuccessStateImplCopyWithImpl(
      _$UserAuthSigninSuccessStateImpl _value,
      $Res Function(_$UserAuthSigninSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAuthSigninSuccessStateImpl implements UserAuthSigninSuccessState {
  const _$UserAuthSigninSuccessStateImpl();

  @override
  String toString() {
    return 'UserAuthState.signedin()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthSigninSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() signedin,
    required TResult Function() signedup,
    required TResult Function() passreset,
    required TResult Function(String feedback) failure,
  }) {
    return signedin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? signedin,
    TResult? Function()? signedup,
    TResult? Function()? passreset,
    TResult? Function(String feedback)? failure,
  }) {
    return signedin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? signedin,
    TResult Function()? signedup,
    TResult Function()? passreset,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) {
    if (signedin != null) {
      return signedin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthState value) initial,
    required TResult Function(UserAuthLoadedState value) loaded,
    required TResult Function(UserAuthLoadingState value) loading,
    required TResult Function(UserAuthSuccessState value) success,
    required TResult Function(UserAuthSigninSuccessState value) signedin,
    required TResult Function(UserAuthSignupSuccessState value) signedup,
    required TResult Function(UserAuthPasswordResetState value) passreset,
    required TResult Function(UserAuthFailureState value) failure,
  }) {
    return signedin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAuthState value)? initial,
    TResult? Function(UserAuthLoadedState value)? loaded,
    TResult? Function(UserAuthLoadingState value)? loading,
    TResult? Function(UserAuthSuccessState value)? success,
    TResult? Function(UserAuthSigninSuccessState value)? signedin,
    TResult? Function(UserAuthSignupSuccessState value)? signedup,
    TResult? Function(UserAuthPasswordResetState value)? passreset,
    TResult? Function(UserAuthFailureState value)? failure,
  }) {
    return signedin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthState value)? initial,
    TResult Function(UserAuthLoadedState value)? loaded,
    TResult Function(UserAuthLoadingState value)? loading,
    TResult Function(UserAuthSuccessState value)? success,
    TResult Function(UserAuthSigninSuccessState value)? signedin,
    TResult Function(UserAuthSignupSuccessState value)? signedup,
    TResult Function(UserAuthPasswordResetState value)? passreset,
    TResult Function(UserAuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (signedin != null) {
      return signedin(this);
    }
    return orElse();
  }
}

abstract class UserAuthSigninSuccessState implements UserAuthState {
  const factory UserAuthSigninSuccessState() = _$UserAuthSigninSuccessStateImpl;
}

/// @nodoc
abstract class _$$UserAuthSignupSuccessStateImplCopyWith<$Res> {
  factory _$$UserAuthSignupSuccessStateImplCopyWith(
          _$UserAuthSignupSuccessStateImpl value,
          $Res Function(_$UserAuthSignupSuccessStateImpl) then) =
      __$$UserAuthSignupSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthSignupSuccessStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthSignupSuccessStateImpl>
    implements _$$UserAuthSignupSuccessStateImplCopyWith<$Res> {
  __$$UserAuthSignupSuccessStateImplCopyWithImpl(
      _$UserAuthSignupSuccessStateImpl _value,
      $Res Function(_$UserAuthSignupSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAuthSignupSuccessStateImpl implements UserAuthSignupSuccessState {
  const _$UserAuthSignupSuccessStateImpl();

  @override
  String toString() {
    return 'UserAuthState.signedup()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthSignupSuccessStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() signedin,
    required TResult Function() signedup,
    required TResult Function() passreset,
    required TResult Function(String feedback) failure,
  }) {
    return signedup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? signedin,
    TResult? Function()? signedup,
    TResult? Function()? passreset,
    TResult? Function(String feedback)? failure,
  }) {
    return signedup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? signedin,
    TResult Function()? signedup,
    TResult Function()? passreset,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) {
    if (signedup != null) {
      return signedup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthState value) initial,
    required TResult Function(UserAuthLoadedState value) loaded,
    required TResult Function(UserAuthLoadingState value) loading,
    required TResult Function(UserAuthSuccessState value) success,
    required TResult Function(UserAuthSigninSuccessState value) signedin,
    required TResult Function(UserAuthSignupSuccessState value) signedup,
    required TResult Function(UserAuthPasswordResetState value) passreset,
    required TResult Function(UserAuthFailureState value) failure,
  }) {
    return signedup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAuthState value)? initial,
    TResult? Function(UserAuthLoadedState value)? loaded,
    TResult? Function(UserAuthLoadingState value)? loading,
    TResult? Function(UserAuthSuccessState value)? success,
    TResult? Function(UserAuthSigninSuccessState value)? signedin,
    TResult? Function(UserAuthSignupSuccessState value)? signedup,
    TResult? Function(UserAuthPasswordResetState value)? passreset,
    TResult? Function(UserAuthFailureState value)? failure,
  }) {
    return signedup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthState value)? initial,
    TResult Function(UserAuthLoadedState value)? loaded,
    TResult Function(UserAuthLoadingState value)? loading,
    TResult Function(UserAuthSuccessState value)? success,
    TResult Function(UserAuthSigninSuccessState value)? signedin,
    TResult Function(UserAuthSignupSuccessState value)? signedup,
    TResult Function(UserAuthPasswordResetState value)? passreset,
    TResult Function(UserAuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (signedup != null) {
      return signedup(this);
    }
    return orElse();
  }
}

abstract class UserAuthSignupSuccessState implements UserAuthState {
  const factory UserAuthSignupSuccessState() = _$UserAuthSignupSuccessStateImpl;
}

/// @nodoc
abstract class _$$UserAuthPasswordResetStateImplCopyWith<$Res> {
  factory _$$UserAuthPasswordResetStateImplCopyWith(
          _$UserAuthPasswordResetStateImpl value,
          $Res Function(_$UserAuthPasswordResetStateImpl) then) =
      __$$UserAuthPasswordResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserAuthPasswordResetStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthPasswordResetStateImpl>
    implements _$$UserAuthPasswordResetStateImplCopyWith<$Res> {
  __$$UserAuthPasswordResetStateImplCopyWithImpl(
      _$UserAuthPasswordResetStateImpl _value,
      $Res Function(_$UserAuthPasswordResetStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserAuthPasswordResetStateImpl implements UserAuthPasswordResetState {
  const _$UserAuthPasswordResetStateImpl();

  @override
  String toString() {
    return 'UserAuthState.passreset()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthPasswordResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() signedin,
    required TResult Function() signedup,
    required TResult Function() passreset,
    required TResult Function(String feedback) failure,
  }) {
    return passreset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? signedin,
    TResult? Function()? signedup,
    TResult? Function()? passreset,
    TResult? Function(String feedback)? failure,
  }) {
    return passreset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? signedin,
    TResult Function()? signedup,
    TResult Function()? passreset,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) {
    if (passreset != null) {
      return passreset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthState value) initial,
    required TResult Function(UserAuthLoadedState value) loaded,
    required TResult Function(UserAuthLoadingState value) loading,
    required TResult Function(UserAuthSuccessState value) success,
    required TResult Function(UserAuthSigninSuccessState value) signedin,
    required TResult Function(UserAuthSignupSuccessState value) signedup,
    required TResult Function(UserAuthPasswordResetState value) passreset,
    required TResult Function(UserAuthFailureState value) failure,
  }) {
    return passreset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAuthState value)? initial,
    TResult? Function(UserAuthLoadedState value)? loaded,
    TResult? Function(UserAuthLoadingState value)? loading,
    TResult? Function(UserAuthSuccessState value)? success,
    TResult? Function(UserAuthSigninSuccessState value)? signedin,
    TResult? Function(UserAuthSignupSuccessState value)? signedup,
    TResult? Function(UserAuthPasswordResetState value)? passreset,
    TResult? Function(UserAuthFailureState value)? failure,
  }) {
    return passreset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthState value)? initial,
    TResult Function(UserAuthLoadedState value)? loaded,
    TResult Function(UserAuthLoadingState value)? loading,
    TResult Function(UserAuthSuccessState value)? success,
    TResult Function(UserAuthSigninSuccessState value)? signedin,
    TResult Function(UserAuthSignupSuccessState value)? signedup,
    TResult Function(UserAuthPasswordResetState value)? passreset,
    TResult Function(UserAuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (passreset != null) {
      return passreset(this);
    }
    return orElse();
  }
}

abstract class UserAuthPasswordResetState implements UserAuthState {
  const factory UserAuthPasswordResetState() = _$UserAuthPasswordResetStateImpl;
}

/// @nodoc
abstract class _$$UserAuthFailureStateImplCopyWith<$Res> {
  factory _$$UserAuthFailureStateImplCopyWith(_$UserAuthFailureStateImpl value,
          $Res Function(_$UserAuthFailureStateImpl) then) =
      __$$UserAuthFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String feedback});
}

/// @nodoc
class __$$UserAuthFailureStateImplCopyWithImpl<$Res>
    extends _$UserAuthStateCopyWithImpl<$Res, _$UserAuthFailureStateImpl>
    implements _$$UserAuthFailureStateImplCopyWith<$Res> {
  __$$UserAuthFailureStateImplCopyWithImpl(_$UserAuthFailureStateImpl _value,
      $Res Function(_$UserAuthFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = null,
  }) {
    return _then(_$UserAuthFailureStateImpl(
      null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserAuthFailureStateImpl implements UserAuthFailureState {
  const _$UserAuthFailureStateImpl(this.feedback);

  @override
  final String feedback;

  @override
  String toString() {
    return 'UserAuthState.failure(feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthFailureStateImpl &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedback);

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthFailureStateImplCopyWith<_$UserAuthFailureStateImpl>
      get copyWith =>
          __$$UserAuthFailureStateImplCopyWithImpl<_$UserAuthFailureStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() signedin,
    required TResult Function() signedup,
    required TResult Function() passreset,
    required TResult Function(String feedback) failure,
  }) {
    return failure(feedback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? signedin,
    TResult? Function()? signedup,
    TResult? Function()? passreset,
    TResult? Function(String feedback)? failure,
  }) {
    return failure?.call(feedback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? signedin,
    TResult Function()? signedup,
    TResult Function()? passreset,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(feedback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserAuthState value) initial,
    required TResult Function(UserAuthLoadedState value) loaded,
    required TResult Function(UserAuthLoadingState value) loading,
    required TResult Function(UserAuthSuccessState value) success,
    required TResult Function(UserAuthSigninSuccessState value) signedin,
    required TResult Function(UserAuthSignupSuccessState value) signedup,
    required TResult Function(UserAuthPasswordResetState value) passreset,
    required TResult Function(UserAuthFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserAuthState value)? initial,
    TResult? Function(UserAuthLoadedState value)? loaded,
    TResult? Function(UserAuthLoadingState value)? loading,
    TResult? Function(UserAuthSuccessState value)? success,
    TResult? Function(UserAuthSigninSuccessState value)? signedin,
    TResult? Function(UserAuthSignupSuccessState value)? signedup,
    TResult? Function(UserAuthPasswordResetState value)? passreset,
    TResult? Function(UserAuthFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserAuthState value)? initial,
    TResult Function(UserAuthLoadedState value)? loaded,
    TResult Function(UserAuthLoadingState value)? loading,
    TResult Function(UserAuthSuccessState value)? success,
    TResult Function(UserAuthSigninSuccessState value)? signedin,
    TResult Function(UserAuthSignupSuccessState value)? signedup,
    TResult Function(UserAuthPasswordResetState value)? passreset,
    TResult Function(UserAuthFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UserAuthFailureState implements UserAuthState {
  const factory UserAuthFailureState(final String feedback) =
      _$UserAuthFailureStateImpl;

  String get feedback;

  /// Create a copy of UserAuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserAuthFailureStateImplCopyWith<_$UserAuthFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
