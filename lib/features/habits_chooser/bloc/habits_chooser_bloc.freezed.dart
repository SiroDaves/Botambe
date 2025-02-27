// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habits_chooser_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitsChooserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<Habit> habits) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<Habit> habits)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<Habit> habits)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetch,
    required TResult Function(SaveData value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetch,
    TResult? Function(SaveData value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetch,
    TResult Function(SaveData value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsChooserEventCopyWith<$Res> {
  factory $HabitsChooserEventCopyWith(
          HabitsChooserEvent value, $Res Function(HabitsChooserEvent) then) =
      _$HabitsChooserEventCopyWithImpl<$Res, HabitsChooserEvent>;
}

/// @nodoc
class _$HabitsChooserEventCopyWithImpl<$Res, $Val extends HabitsChooserEvent>
    implements $HabitsChooserEventCopyWith<$Res> {
  _$HabitsChooserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitsChooserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FetchDataImplCopyWith<$Res> {
  factory _$$FetchDataImplCopyWith(
          _$FetchDataImpl value, $Res Function(_$FetchDataImpl) then) =
      __$$FetchDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchDataImplCopyWithImpl<$Res>
    extends _$HabitsChooserEventCopyWithImpl<$Res, _$FetchDataImpl>
    implements _$$FetchDataImplCopyWith<$Res> {
  __$$FetchDataImplCopyWithImpl(
      _$FetchDataImpl _value, $Res Function(_$FetchDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitsChooserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FetchDataImpl implements FetchData {
  const _$FetchDataImpl();

  @override
  String toString() {
    return 'HabitsChooserEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<Habit> habits) save,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<Habit> habits)? save,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<Habit> habits)? save,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetch,
    required TResult Function(SaveData value) save,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetch,
    TResult? Function(SaveData value)? save,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetch,
    TResult Function(SaveData value)? save,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class FetchData implements HabitsChooserEvent {
  const factory FetchData() = _$FetchDataImpl;
}

/// @nodoc
abstract class _$$SaveDataImplCopyWith<$Res> {
  factory _$$SaveDataImplCopyWith(
          _$SaveDataImpl value, $Res Function(_$SaveDataImpl) then) =
      __$$SaveDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Habit> habits});
}

/// @nodoc
class __$$SaveDataImplCopyWithImpl<$Res>
    extends _$HabitsChooserEventCopyWithImpl<$Res, _$SaveDataImpl>
    implements _$$SaveDataImplCopyWith<$Res> {
  __$$SaveDataImplCopyWithImpl(
      _$SaveDataImpl _value, $Res Function(_$SaveDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitsChooserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habits = null,
  }) {
    return _then(_$SaveDataImpl(
      null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
    ));
  }
}

/// @nodoc

class _$SaveDataImpl implements SaveData {
  const _$SaveDataImpl(final List<Habit> habits) : _habits = habits;

  final List<Habit> _habits;
  @override
  List<Habit> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  @override
  String toString() {
    return 'HabitsChooserEvent.save(habits: $habits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveDataImpl &&
            const DeepCollectionEquality().equals(other._habits, _habits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_habits));

  /// Create a copy of HabitsChooserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveDataImplCopyWith<_$SaveDataImpl> get copyWith =>
      __$$SaveDataImplCopyWithImpl<_$SaveDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<Habit> habits) save,
  }) {
    return save(habits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(List<Habit> habits)? save,
  }) {
    return save?.call(habits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<Habit> habits)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(habits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchData value) fetch,
    required TResult Function(SaveData value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchData value)? fetch,
    TResult? Function(SaveData value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchData value)? fetch,
    TResult Function(SaveData value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveData implements HabitsChooserEvent {
  const factory SaveData(final List<Habit> habits) = _$SaveDataImpl;

  List<Habit> get habits;

  /// Create a copy of HabitsChooserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveDataImplCopyWith<_$SaveDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HabitsChooserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<Habit> habits) fetched,
    required TResult Function(String feedback) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<Habit> habits)? fetched,
    TResult? Function(String feedback)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<Habit> habits)? fetched,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HabitsChooserState value) initial,
    required TResult Function(HabitsChooserLoadedState value) loaded,
    required TResult Function(HabitsChooserLoadingState value) loading,
    required TResult Function(HabitsChooserSuccessState value) success,
    required TResult Function(HabitsChooserFetchedState value) fetched,
    required TResult Function(HabitsChooserFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HabitsChooserState value)? initial,
    TResult? Function(HabitsChooserLoadedState value)? loaded,
    TResult? Function(HabitsChooserLoadingState value)? loading,
    TResult? Function(HabitsChooserSuccessState value)? success,
    TResult? Function(HabitsChooserFetchedState value)? fetched,
    TResult? Function(HabitsChooserFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitsChooserState value)? initial,
    TResult Function(HabitsChooserLoadedState value)? loaded,
    TResult Function(HabitsChooserLoadingState value)? loading,
    TResult Function(HabitsChooserSuccessState value)? success,
    TResult Function(HabitsChooserFetchedState value)? fetched,
    TResult Function(HabitsChooserFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitsChooserStateCopyWith<$Res> {
  factory $HabitsChooserStateCopyWith(
          HabitsChooserState value, $Res Function(HabitsChooserState) then) =
      _$HabitsChooserStateCopyWithImpl<$Res, HabitsChooserState>;
}

/// @nodoc
class _$HabitsChooserStateCopyWithImpl<$Res, $Val extends HabitsChooserState>
    implements $HabitsChooserStateCopyWith<$Res> {
  _$HabitsChooserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HabitsChooserStateImplCopyWith<$Res> {
  factory _$$HabitsChooserStateImplCopyWith(_$HabitsChooserStateImpl value,
          $Res Function(_$HabitsChooserStateImpl) then) =
      __$$HabitsChooserStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitsChooserStateImplCopyWithImpl<$Res>
    extends _$HabitsChooserStateCopyWithImpl<$Res, _$HabitsChooserStateImpl>
    implements _$$HabitsChooserStateImplCopyWith<$Res> {
  __$$HabitsChooserStateImplCopyWithImpl(_$HabitsChooserStateImpl _value,
      $Res Function(_$HabitsChooserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HabitsChooserStateImpl implements _HabitsChooserState {
  const _$HabitsChooserStateImpl();

  @override
  String toString() {
    return 'HabitsChooserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HabitsChooserStateImpl);
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
    required TResult Function(List<Habit> habits) fetched,
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
    TResult? Function(List<Habit> habits)? fetched,
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
    TResult Function(List<Habit> habits)? fetched,
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
    required TResult Function(_HabitsChooserState value) initial,
    required TResult Function(HabitsChooserLoadedState value) loaded,
    required TResult Function(HabitsChooserLoadingState value) loading,
    required TResult Function(HabitsChooserSuccessState value) success,
    required TResult Function(HabitsChooserFetchedState value) fetched,
    required TResult Function(HabitsChooserFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HabitsChooserState value)? initial,
    TResult? Function(HabitsChooserLoadedState value)? loaded,
    TResult? Function(HabitsChooserLoadingState value)? loading,
    TResult? Function(HabitsChooserSuccessState value)? success,
    TResult? Function(HabitsChooserFetchedState value)? fetched,
    TResult? Function(HabitsChooserFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitsChooserState value)? initial,
    TResult Function(HabitsChooserLoadedState value)? loaded,
    TResult Function(HabitsChooserLoadingState value)? loading,
    TResult Function(HabitsChooserSuccessState value)? success,
    TResult Function(HabitsChooserFetchedState value)? fetched,
    TResult Function(HabitsChooserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HabitsChooserState implements HabitsChooserState {
  const factory _HabitsChooserState() = _$HabitsChooserStateImpl;
}

/// @nodoc
abstract class _$$HabitsChooserLoadedStateImplCopyWith<$Res> {
  factory _$$HabitsChooserLoadedStateImplCopyWith(
          _$HabitsChooserLoadedStateImpl value,
          $Res Function(_$HabitsChooserLoadedStateImpl) then) =
      __$$HabitsChooserLoadedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitsChooserLoadedStateImplCopyWithImpl<$Res>
    extends _$HabitsChooserStateCopyWithImpl<$Res,
        _$HabitsChooserLoadedStateImpl>
    implements _$$HabitsChooserLoadedStateImplCopyWith<$Res> {
  __$$HabitsChooserLoadedStateImplCopyWithImpl(
      _$HabitsChooserLoadedStateImpl _value,
      $Res Function(_$HabitsChooserLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HabitsChooserLoadedStateImpl implements HabitsChooserLoadedState {
  const _$HabitsChooserLoadedStateImpl();

  @override
  String toString() {
    return 'HabitsChooserState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitsChooserLoadedStateImpl);
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
    required TResult Function(List<Habit> habits) fetched,
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
    TResult? Function(List<Habit> habits)? fetched,
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
    TResult Function(List<Habit> habits)? fetched,
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
    required TResult Function(_HabitsChooserState value) initial,
    required TResult Function(HabitsChooserLoadedState value) loaded,
    required TResult Function(HabitsChooserLoadingState value) loading,
    required TResult Function(HabitsChooserSuccessState value) success,
    required TResult Function(HabitsChooserFetchedState value) fetched,
    required TResult Function(HabitsChooserFailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HabitsChooserState value)? initial,
    TResult? Function(HabitsChooserLoadedState value)? loaded,
    TResult? Function(HabitsChooserLoadingState value)? loading,
    TResult? Function(HabitsChooserSuccessState value)? success,
    TResult? Function(HabitsChooserFetchedState value)? fetched,
    TResult? Function(HabitsChooserFailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitsChooserState value)? initial,
    TResult Function(HabitsChooserLoadedState value)? loaded,
    TResult Function(HabitsChooserLoadingState value)? loading,
    TResult Function(HabitsChooserSuccessState value)? success,
    TResult Function(HabitsChooserFetchedState value)? fetched,
    TResult Function(HabitsChooserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HabitsChooserLoadedState implements HabitsChooserState {
  const factory HabitsChooserLoadedState() = _$HabitsChooserLoadedStateImpl;
}

/// @nodoc
abstract class _$$HabitsChooserLoadingStateImplCopyWith<$Res> {
  factory _$$HabitsChooserLoadingStateImplCopyWith(
          _$HabitsChooserLoadingStateImpl value,
          $Res Function(_$HabitsChooserLoadingStateImpl) then) =
      __$$HabitsChooserLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitsChooserLoadingStateImplCopyWithImpl<$Res>
    extends _$HabitsChooserStateCopyWithImpl<$Res,
        _$HabitsChooserLoadingStateImpl>
    implements _$$HabitsChooserLoadingStateImplCopyWith<$Res> {
  __$$HabitsChooserLoadingStateImplCopyWithImpl(
      _$HabitsChooserLoadingStateImpl _value,
      $Res Function(_$HabitsChooserLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HabitsChooserLoadingStateImpl implements HabitsChooserLoadingState {
  const _$HabitsChooserLoadingStateImpl();

  @override
  String toString() {
    return 'HabitsChooserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitsChooserLoadingStateImpl);
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
    required TResult Function(List<Habit> habits) fetched,
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
    TResult? Function(List<Habit> habits)? fetched,
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
    TResult Function(List<Habit> habits)? fetched,
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
    required TResult Function(_HabitsChooserState value) initial,
    required TResult Function(HabitsChooserLoadedState value) loaded,
    required TResult Function(HabitsChooserLoadingState value) loading,
    required TResult Function(HabitsChooserSuccessState value) success,
    required TResult Function(HabitsChooserFetchedState value) fetched,
    required TResult Function(HabitsChooserFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HabitsChooserState value)? initial,
    TResult? Function(HabitsChooserLoadedState value)? loaded,
    TResult? Function(HabitsChooserLoadingState value)? loading,
    TResult? Function(HabitsChooserSuccessState value)? success,
    TResult? Function(HabitsChooserFetchedState value)? fetched,
    TResult? Function(HabitsChooserFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitsChooserState value)? initial,
    TResult Function(HabitsChooserLoadedState value)? loaded,
    TResult Function(HabitsChooserLoadingState value)? loading,
    TResult Function(HabitsChooserSuccessState value)? success,
    TResult Function(HabitsChooserFetchedState value)? fetched,
    TResult Function(HabitsChooserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HabitsChooserLoadingState implements HabitsChooserState {
  const factory HabitsChooserLoadingState() = _$HabitsChooserLoadingStateImpl;
}

/// @nodoc
abstract class _$$HabitsChooserSuccessStateImplCopyWith<$Res> {
  factory _$$HabitsChooserSuccessStateImplCopyWith(
          _$HabitsChooserSuccessStateImpl value,
          $Res Function(_$HabitsChooserSuccessStateImpl) then) =
      __$$HabitsChooserSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HabitsChooserSuccessStateImplCopyWithImpl<$Res>
    extends _$HabitsChooserStateCopyWithImpl<$Res,
        _$HabitsChooserSuccessStateImpl>
    implements _$$HabitsChooserSuccessStateImplCopyWith<$Res> {
  __$$HabitsChooserSuccessStateImplCopyWithImpl(
      _$HabitsChooserSuccessStateImpl _value,
      $Res Function(_$HabitsChooserSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HabitsChooserSuccessStateImpl implements HabitsChooserSuccessState {
  const _$HabitsChooserSuccessStateImpl();

  @override
  String toString() {
    return 'HabitsChooserState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitsChooserSuccessStateImpl);
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
    required TResult Function(List<Habit> habits) fetched,
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
    TResult? Function(List<Habit> habits)? fetched,
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
    TResult Function(List<Habit> habits)? fetched,
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
    required TResult Function(_HabitsChooserState value) initial,
    required TResult Function(HabitsChooserLoadedState value) loaded,
    required TResult Function(HabitsChooserLoadingState value) loading,
    required TResult Function(HabitsChooserSuccessState value) success,
    required TResult Function(HabitsChooserFetchedState value) fetched,
    required TResult Function(HabitsChooserFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HabitsChooserState value)? initial,
    TResult? Function(HabitsChooserLoadedState value)? loaded,
    TResult? Function(HabitsChooserLoadingState value)? loading,
    TResult? Function(HabitsChooserSuccessState value)? success,
    TResult? Function(HabitsChooserFetchedState value)? fetched,
    TResult? Function(HabitsChooserFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitsChooserState value)? initial,
    TResult Function(HabitsChooserLoadedState value)? loaded,
    TResult Function(HabitsChooserLoadingState value)? loading,
    TResult Function(HabitsChooserSuccessState value)? success,
    TResult Function(HabitsChooserFetchedState value)? fetched,
    TResult Function(HabitsChooserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HabitsChooserSuccessState implements HabitsChooserState {
  const factory HabitsChooserSuccessState() = _$HabitsChooserSuccessStateImpl;
}

/// @nodoc
abstract class _$$HabitsChooserFetchedStateImplCopyWith<$Res> {
  factory _$$HabitsChooserFetchedStateImplCopyWith(
          _$HabitsChooserFetchedStateImpl value,
          $Res Function(_$HabitsChooserFetchedStateImpl) then) =
      __$$HabitsChooserFetchedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Habit> habits});
}

/// @nodoc
class __$$HabitsChooserFetchedStateImplCopyWithImpl<$Res>
    extends _$HabitsChooserStateCopyWithImpl<$Res,
        _$HabitsChooserFetchedStateImpl>
    implements _$$HabitsChooserFetchedStateImplCopyWith<$Res> {
  __$$HabitsChooserFetchedStateImplCopyWithImpl(
      _$HabitsChooserFetchedStateImpl _value,
      $Res Function(_$HabitsChooserFetchedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habits = null,
  }) {
    return _then(_$HabitsChooserFetchedStateImpl(
      null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
    ));
  }
}

/// @nodoc

class _$HabitsChooserFetchedStateImpl implements HabitsChooserFetchedState {
  const _$HabitsChooserFetchedStateImpl(final List<Habit> habits)
      : _habits = habits;

  final List<Habit> _habits;
  @override
  List<Habit> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  @override
  String toString() {
    return 'HabitsChooserState.fetched(habits: $habits)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitsChooserFetchedStateImpl &&
            const DeepCollectionEquality().equals(other._habits, _habits));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_habits));

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitsChooserFetchedStateImplCopyWith<_$HabitsChooserFetchedStateImpl>
      get copyWith => __$$HabitsChooserFetchedStateImplCopyWithImpl<
          _$HabitsChooserFetchedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<Habit> habits) fetched,
    required TResult Function(String feedback) failure,
  }) {
    return fetched(habits);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(List<Habit> habits)? fetched,
    TResult? Function(String feedback)? failure,
  }) {
    return fetched?.call(habits);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(List<Habit> habits)? fetched,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(habits);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HabitsChooserState value) initial,
    required TResult Function(HabitsChooserLoadedState value) loaded,
    required TResult Function(HabitsChooserLoadingState value) loading,
    required TResult Function(HabitsChooserSuccessState value) success,
    required TResult Function(HabitsChooserFetchedState value) fetched,
    required TResult Function(HabitsChooserFailureState value) failure,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HabitsChooserState value)? initial,
    TResult? Function(HabitsChooserLoadedState value)? loaded,
    TResult? Function(HabitsChooserLoadingState value)? loading,
    TResult? Function(HabitsChooserSuccessState value)? success,
    TResult? Function(HabitsChooserFetchedState value)? fetched,
    TResult? Function(HabitsChooserFailureState value)? failure,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitsChooserState value)? initial,
    TResult Function(HabitsChooserLoadedState value)? loaded,
    TResult Function(HabitsChooserLoadingState value)? loading,
    TResult Function(HabitsChooserSuccessState value)? success,
    TResult Function(HabitsChooserFetchedState value)? fetched,
    TResult Function(HabitsChooserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class HabitsChooserFetchedState implements HabitsChooserState {
  const factory HabitsChooserFetchedState(final List<Habit> habits) =
      _$HabitsChooserFetchedStateImpl;

  List<Habit> get habits;

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitsChooserFetchedStateImplCopyWith<_$HabitsChooserFetchedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HabitsChooserFailureStateImplCopyWith<$Res> {
  factory _$$HabitsChooserFailureStateImplCopyWith(
          _$HabitsChooserFailureStateImpl value,
          $Res Function(_$HabitsChooserFailureStateImpl) then) =
      __$$HabitsChooserFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String feedback});
}

/// @nodoc
class __$$HabitsChooserFailureStateImplCopyWithImpl<$Res>
    extends _$HabitsChooserStateCopyWithImpl<$Res,
        _$HabitsChooserFailureStateImpl>
    implements _$$HabitsChooserFailureStateImplCopyWith<$Res> {
  __$$HabitsChooserFailureStateImplCopyWithImpl(
      _$HabitsChooserFailureStateImpl _value,
      $Res Function(_$HabitsChooserFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = null,
  }) {
    return _then(_$HabitsChooserFailureStateImpl(
      null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HabitsChooserFailureStateImpl implements HabitsChooserFailureState {
  const _$HabitsChooserFailureStateImpl(this.feedback);

  @override
  final String feedback;

  @override
  String toString() {
    return 'HabitsChooserState.failure(feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitsChooserFailureStateImpl &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedback);

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitsChooserFailureStateImplCopyWith<_$HabitsChooserFailureStateImpl>
      get copyWith => __$$HabitsChooserFailureStateImplCopyWithImpl<
          _$HabitsChooserFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(List<Habit> habits) fetched,
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
    TResult? Function(List<Habit> habits)? fetched,
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
    TResult Function(List<Habit> habits)? fetched,
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
    required TResult Function(_HabitsChooserState value) initial,
    required TResult Function(HabitsChooserLoadedState value) loaded,
    required TResult Function(HabitsChooserLoadingState value) loading,
    required TResult Function(HabitsChooserSuccessState value) success,
    required TResult Function(HabitsChooserFetchedState value) fetched,
    required TResult Function(HabitsChooserFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HabitsChooserState value)? initial,
    TResult? Function(HabitsChooserLoadedState value)? loaded,
    TResult? Function(HabitsChooserLoadingState value)? loading,
    TResult? Function(HabitsChooserSuccessState value)? success,
    TResult? Function(HabitsChooserFetchedState value)? fetched,
    TResult? Function(HabitsChooserFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HabitsChooserState value)? initial,
    TResult Function(HabitsChooserLoadedState value)? loaded,
    TResult Function(HabitsChooserLoadingState value)? loading,
    TResult Function(HabitsChooserSuccessState value)? success,
    TResult Function(HabitsChooserFetchedState value)? fetched,
    TResult Function(HabitsChooserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HabitsChooserFailureState implements HabitsChooserState {
  const factory HabitsChooserFailureState(final String feedback) =
      _$HabitsChooserFailureStateImpl;

  String get feedback;

  /// Create a copy of HabitsChooserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HabitsChooserFailureStateImplCopyWith<_$HabitsChooserFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
