// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchlocal,
    required TResult Function() fetchOnline,
    required TResult Function(HabitEntry entry) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchlocal,
    TResult? Function()? fetchOnline,
    TResult? Function(HabitEntry entry)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchlocal,
    TResult Function()? fetchOnline,
    TResult Function(HabitEntry entry)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardFetchLocalData value) fetchlocal,
    required TResult Function(DashboardFetchOnlineData value) fetchOnline,
    required TResult Function(DashboardSaveEntry value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardFetchLocalData value)? fetchlocal,
    TResult? Function(DashboardFetchOnlineData value)? fetchOnline,
    TResult? Function(DashboardSaveEntry value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardFetchLocalData value)? fetchlocal,
    TResult Function(DashboardFetchOnlineData value)? fetchOnline,
    TResult Function(DashboardSaveEntry value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DashboardFetchLocalDataImplCopyWith<$Res> {
  factory _$$DashboardFetchLocalDataImplCopyWith(
          _$DashboardFetchLocalDataImpl value,
          $Res Function(_$DashboardFetchLocalDataImpl) then) =
      __$$DashboardFetchLocalDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardFetchLocalDataImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$DashboardFetchLocalDataImpl>
    implements _$$DashboardFetchLocalDataImplCopyWith<$Res> {
  __$$DashboardFetchLocalDataImplCopyWithImpl(
      _$DashboardFetchLocalDataImpl _value,
      $Res Function(_$DashboardFetchLocalDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DashboardFetchLocalDataImpl implements DashboardFetchLocalData {
  const _$DashboardFetchLocalDataImpl();

  @override
  String toString() {
    return 'DashboardEvent.fetchlocal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardFetchLocalDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchlocal,
    required TResult Function() fetchOnline,
    required TResult Function(HabitEntry entry) save,
  }) {
    return fetchlocal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchlocal,
    TResult? Function()? fetchOnline,
    TResult? Function(HabitEntry entry)? save,
  }) {
    return fetchlocal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchlocal,
    TResult Function()? fetchOnline,
    TResult Function(HabitEntry entry)? save,
    required TResult orElse(),
  }) {
    if (fetchlocal != null) {
      return fetchlocal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardFetchLocalData value) fetchlocal,
    required TResult Function(DashboardFetchOnlineData value) fetchOnline,
    required TResult Function(DashboardSaveEntry value) save,
  }) {
    return fetchlocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardFetchLocalData value)? fetchlocal,
    TResult? Function(DashboardFetchOnlineData value)? fetchOnline,
    TResult? Function(DashboardSaveEntry value)? save,
  }) {
    return fetchlocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardFetchLocalData value)? fetchlocal,
    TResult Function(DashboardFetchOnlineData value)? fetchOnline,
    TResult Function(DashboardSaveEntry value)? save,
    required TResult orElse(),
  }) {
    if (fetchlocal != null) {
      return fetchlocal(this);
    }
    return orElse();
  }
}

abstract class DashboardFetchLocalData implements DashboardEvent {
  const factory DashboardFetchLocalData() = _$DashboardFetchLocalDataImpl;
}

/// @nodoc
abstract class _$$DashboardFetchOnlineDataImplCopyWith<$Res> {
  factory _$$DashboardFetchOnlineDataImplCopyWith(
          _$DashboardFetchOnlineDataImpl value,
          $Res Function(_$DashboardFetchOnlineDataImpl) then) =
      __$$DashboardFetchOnlineDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardFetchOnlineDataImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$DashboardFetchOnlineDataImpl>
    implements _$$DashboardFetchOnlineDataImplCopyWith<$Res> {
  __$$DashboardFetchOnlineDataImplCopyWithImpl(
      _$DashboardFetchOnlineDataImpl _value,
      $Res Function(_$DashboardFetchOnlineDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DashboardFetchOnlineDataImpl implements DashboardFetchOnlineData {
  const _$DashboardFetchOnlineDataImpl();

  @override
  String toString() {
    return 'DashboardEvent.fetchOnline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardFetchOnlineDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchlocal,
    required TResult Function() fetchOnline,
    required TResult Function(HabitEntry entry) save,
  }) {
    return fetchOnline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchlocal,
    TResult? Function()? fetchOnline,
    TResult? Function(HabitEntry entry)? save,
  }) {
    return fetchOnline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchlocal,
    TResult Function()? fetchOnline,
    TResult Function(HabitEntry entry)? save,
    required TResult orElse(),
  }) {
    if (fetchOnline != null) {
      return fetchOnline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardFetchLocalData value) fetchlocal,
    required TResult Function(DashboardFetchOnlineData value) fetchOnline,
    required TResult Function(DashboardSaveEntry value) save,
  }) {
    return fetchOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardFetchLocalData value)? fetchlocal,
    TResult? Function(DashboardFetchOnlineData value)? fetchOnline,
    TResult? Function(DashboardSaveEntry value)? save,
  }) {
    return fetchOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardFetchLocalData value)? fetchlocal,
    TResult Function(DashboardFetchOnlineData value)? fetchOnline,
    TResult Function(DashboardSaveEntry value)? save,
    required TResult orElse(),
  }) {
    if (fetchOnline != null) {
      return fetchOnline(this);
    }
    return orElse();
  }
}

abstract class DashboardFetchOnlineData implements DashboardEvent {
  const factory DashboardFetchOnlineData() = _$DashboardFetchOnlineDataImpl;
}

/// @nodoc
abstract class _$$DashboardSaveEntryImplCopyWith<$Res> {
  factory _$$DashboardSaveEntryImplCopyWith(_$DashboardSaveEntryImpl value,
          $Res Function(_$DashboardSaveEntryImpl) then) =
      __$$DashboardSaveEntryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({HabitEntry entry});
}

/// @nodoc
class __$$DashboardSaveEntryImplCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$DashboardSaveEntryImpl>
    implements _$$DashboardSaveEntryImplCopyWith<$Res> {
  __$$DashboardSaveEntryImplCopyWithImpl(_$DashboardSaveEntryImpl _value,
      $Res Function(_$DashboardSaveEntryImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = null,
  }) {
    return _then(_$DashboardSaveEntryImpl(
      null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as HabitEntry,
    ));
  }
}

/// @nodoc

class _$DashboardSaveEntryImpl implements DashboardSaveEntry {
  const _$DashboardSaveEntryImpl(this.entry);

  @override
  final HabitEntry entry;

  @override
  String toString() {
    return 'DashboardEvent.save(entry: $entry)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardSaveEntryImpl &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entry);

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardSaveEntryImplCopyWith<_$DashboardSaveEntryImpl> get copyWith =>
      __$$DashboardSaveEntryImplCopyWithImpl<_$DashboardSaveEntryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchlocal,
    required TResult Function() fetchOnline,
    required TResult Function(HabitEntry entry) save,
  }) {
    return save(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchlocal,
    TResult? Function()? fetchOnline,
    TResult? Function(HabitEntry entry)? save,
  }) {
    return save?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchlocal,
    TResult Function()? fetchOnline,
    TResult Function(HabitEntry entry)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DashboardFetchLocalData value) fetchlocal,
    required TResult Function(DashboardFetchOnlineData value) fetchOnline,
    required TResult Function(DashboardSaveEntry value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DashboardFetchLocalData value)? fetchlocal,
    TResult? Function(DashboardFetchOnlineData value)? fetchOnline,
    TResult? Function(DashboardSaveEntry value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DashboardFetchLocalData value)? fetchlocal,
    TResult Function(DashboardFetchOnlineData value)? fetchOnline,
    TResult Function(DashboardSaveEntry value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class DashboardSaveEntry implements DashboardEvent {
  const factory DashboardSaveEntry(final HabitEntry entry) =
      _$DashboardSaveEntryImpl;

  HabitEntry get entry;

  /// Create a copy of DashboardEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardSaveEntryImplCopyWith<_$DashboardSaveEntryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() saved,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedLocal,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedOnline,
    required TResult Function(String feedback) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? saved,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
    TResult? Function(String feedback)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? saved,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DashboardState value) initial,
    required TResult Function(DashboardLoadedState value) loaded,
    required TResult Function(DashboardLoadingState value) loading,
    required TResult Function(DashboardSuccessState value) success,
    required TResult Function(DashboardEntrySavedState value) saved,
    required TResult Function(DashboardFetchedLocalState value) fetchedLocal,
    required TResult Function(DashboardFetchedOnlineState value) fetchedOnline,
    required TResult Function(DashboardFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DashboardState value)? initial,
    TResult? Function(DashboardLoadedState value)? loaded,
    TResult? Function(DashboardLoadingState value)? loading,
    TResult? Function(DashboardSuccessState value)? success,
    TResult? Function(DashboardEntrySavedState value)? saved,
    TResult? Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult? Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult? Function(DashboardFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DashboardState value)? initial,
    TResult Function(DashboardLoadedState value)? loaded,
    TResult Function(DashboardLoadingState value)? loading,
    TResult Function(DashboardSuccessState value)? success,
    TResult Function(DashboardEntrySavedState value)? saved,
    TResult Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult Function(DashboardFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DashboardStateImplCopyWith<$Res> {
  factory _$$DashboardStateImplCopyWith(_$DashboardStateImpl value,
          $Res Function(_$DashboardStateImpl) then) =
      __$$DashboardStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardStateImpl>
    implements _$$DashboardStateImplCopyWith<$Res> {
  __$$DashboardStateImplCopyWithImpl(
      _$DashboardStateImpl _value, $Res Function(_$DashboardStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DashboardStateImpl implements _DashboardState {
  const _$DashboardStateImpl();

  @override
  String toString() {
    return 'DashboardState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DashboardStateImpl);
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
    required TResult Function() saved,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedLocal,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedOnline,
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
    TResult? Function()? saved,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    TResult Function()? saved,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    required TResult Function(_DashboardState value) initial,
    required TResult Function(DashboardLoadedState value) loaded,
    required TResult Function(DashboardLoadingState value) loading,
    required TResult Function(DashboardSuccessState value) success,
    required TResult Function(DashboardEntrySavedState value) saved,
    required TResult Function(DashboardFetchedLocalState value) fetchedLocal,
    required TResult Function(DashboardFetchedOnlineState value) fetchedOnline,
    required TResult Function(DashboardFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DashboardState value)? initial,
    TResult? Function(DashboardLoadedState value)? loaded,
    TResult? Function(DashboardLoadingState value)? loading,
    TResult? Function(DashboardSuccessState value)? success,
    TResult? Function(DashboardEntrySavedState value)? saved,
    TResult? Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult? Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult? Function(DashboardFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DashboardState value)? initial,
    TResult Function(DashboardLoadedState value)? loaded,
    TResult Function(DashboardLoadingState value)? loading,
    TResult Function(DashboardSuccessState value)? success,
    TResult Function(DashboardEntrySavedState value)? saved,
    TResult Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult Function(DashboardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DashboardState implements DashboardState {
  const factory _DashboardState() = _$DashboardStateImpl;
}

/// @nodoc
abstract class _$$DashboardLoadedStateImplCopyWith<$Res> {
  factory _$$DashboardLoadedStateImplCopyWith(_$DashboardLoadedStateImpl value,
          $Res Function(_$DashboardLoadedStateImpl) then) =
      __$$DashboardLoadedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardLoadedStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardLoadedStateImpl>
    implements _$$DashboardLoadedStateImplCopyWith<$Res> {
  __$$DashboardLoadedStateImplCopyWithImpl(_$DashboardLoadedStateImpl _value,
      $Res Function(_$DashboardLoadedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DashboardLoadedStateImpl implements DashboardLoadedState {
  const _$DashboardLoadedStateImpl();

  @override
  String toString() {
    return 'DashboardState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardLoadedStateImpl);
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
    required TResult Function() saved,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedLocal,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedOnline,
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
    TResult? Function()? saved,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    TResult Function()? saved,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    required TResult Function(_DashboardState value) initial,
    required TResult Function(DashboardLoadedState value) loaded,
    required TResult Function(DashboardLoadingState value) loading,
    required TResult Function(DashboardSuccessState value) success,
    required TResult Function(DashboardEntrySavedState value) saved,
    required TResult Function(DashboardFetchedLocalState value) fetchedLocal,
    required TResult Function(DashboardFetchedOnlineState value) fetchedOnline,
    required TResult Function(DashboardFailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DashboardState value)? initial,
    TResult? Function(DashboardLoadedState value)? loaded,
    TResult? Function(DashboardLoadingState value)? loading,
    TResult? Function(DashboardSuccessState value)? success,
    TResult? Function(DashboardEntrySavedState value)? saved,
    TResult? Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult? Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult? Function(DashboardFailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DashboardState value)? initial,
    TResult Function(DashboardLoadedState value)? loaded,
    TResult Function(DashboardLoadingState value)? loading,
    TResult Function(DashboardSuccessState value)? success,
    TResult Function(DashboardEntrySavedState value)? saved,
    TResult Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult Function(DashboardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class DashboardLoadedState implements DashboardState {
  const factory DashboardLoadedState() = _$DashboardLoadedStateImpl;
}

/// @nodoc
abstract class _$$DashboardLoadingStateImplCopyWith<$Res> {
  factory _$$DashboardLoadingStateImplCopyWith(
          _$DashboardLoadingStateImpl value,
          $Res Function(_$DashboardLoadingStateImpl) then) =
      __$$DashboardLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardLoadingStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardLoadingStateImpl>
    implements _$$DashboardLoadingStateImplCopyWith<$Res> {
  __$$DashboardLoadingStateImplCopyWithImpl(_$DashboardLoadingStateImpl _value,
      $Res Function(_$DashboardLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DashboardLoadingStateImpl implements DashboardLoadingState {
  const _$DashboardLoadingStateImpl();

  @override
  String toString() {
    return 'DashboardState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardLoadingStateImpl);
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
    required TResult Function() saved,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedLocal,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedOnline,
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
    TResult? Function()? saved,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    TResult Function()? saved,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    required TResult Function(_DashboardState value) initial,
    required TResult Function(DashboardLoadedState value) loaded,
    required TResult Function(DashboardLoadingState value) loading,
    required TResult Function(DashboardSuccessState value) success,
    required TResult Function(DashboardEntrySavedState value) saved,
    required TResult Function(DashboardFetchedLocalState value) fetchedLocal,
    required TResult Function(DashboardFetchedOnlineState value) fetchedOnline,
    required TResult Function(DashboardFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DashboardState value)? initial,
    TResult? Function(DashboardLoadedState value)? loaded,
    TResult? Function(DashboardLoadingState value)? loading,
    TResult? Function(DashboardSuccessState value)? success,
    TResult? Function(DashboardEntrySavedState value)? saved,
    TResult? Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult? Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult? Function(DashboardFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DashboardState value)? initial,
    TResult Function(DashboardLoadedState value)? loaded,
    TResult Function(DashboardLoadingState value)? loading,
    TResult Function(DashboardSuccessState value)? success,
    TResult Function(DashboardEntrySavedState value)? saved,
    TResult Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult Function(DashboardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DashboardLoadingState implements DashboardState {
  const factory DashboardLoadingState() = _$DashboardLoadingStateImpl;
}

/// @nodoc
abstract class _$$DashboardSuccessStateImplCopyWith<$Res> {
  factory _$$DashboardSuccessStateImplCopyWith(
          _$DashboardSuccessStateImpl value,
          $Res Function(_$DashboardSuccessStateImpl) then) =
      __$$DashboardSuccessStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardSuccessStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardSuccessStateImpl>
    implements _$$DashboardSuccessStateImplCopyWith<$Res> {
  __$$DashboardSuccessStateImplCopyWithImpl(_$DashboardSuccessStateImpl _value,
      $Res Function(_$DashboardSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DashboardSuccessStateImpl implements DashboardSuccessState {
  const _$DashboardSuccessStateImpl();

  @override
  String toString() {
    return 'DashboardState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardSuccessStateImpl);
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
    required TResult Function() saved,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedLocal,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedOnline,
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
    TResult? Function()? saved,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    TResult Function()? saved,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    required TResult Function(_DashboardState value) initial,
    required TResult Function(DashboardLoadedState value) loaded,
    required TResult Function(DashboardLoadingState value) loading,
    required TResult Function(DashboardSuccessState value) success,
    required TResult Function(DashboardEntrySavedState value) saved,
    required TResult Function(DashboardFetchedLocalState value) fetchedLocal,
    required TResult Function(DashboardFetchedOnlineState value) fetchedOnline,
    required TResult Function(DashboardFailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DashboardState value)? initial,
    TResult? Function(DashboardLoadedState value)? loaded,
    TResult? Function(DashboardLoadingState value)? loading,
    TResult? Function(DashboardSuccessState value)? success,
    TResult? Function(DashboardEntrySavedState value)? saved,
    TResult? Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult? Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult? Function(DashboardFailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DashboardState value)? initial,
    TResult Function(DashboardLoadedState value)? loaded,
    TResult Function(DashboardLoadingState value)? loading,
    TResult Function(DashboardSuccessState value)? success,
    TResult Function(DashboardEntrySavedState value)? saved,
    TResult Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult Function(DashboardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DashboardSuccessState implements DashboardState {
  const factory DashboardSuccessState() = _$DashboardSuccessStateImpl;
}

/// @nodoc
abstract class _$$DashboardEntrySavedStateImplCopyWith<$Res> {
  factory _$$DashboardEntrySavedStateImplCopyWith(
          _$DashboardEntrySavedStateImpl value,
          $Res Function(_$DashboardEntrySavedStateImpl) then) =
      __$$DashboardEntrySavedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DashboardEntrySavedStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardEntrySavedStateImpl>
    implements _$$DashboardEntrySavedStateImplCopyWith<$Res> {
  __$$DashboardEntrySavedStateImplCopyWithImpl(
      _$DashboardEntrySavedStateImpl _value,
      $Res Function(_$DashboardEntrySavedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DashboardEntrySavedStateImpl implements DashboardEntrySavedState {
  const _$DashboardEntrySavedStateImpl();

  @override
  String toString() {
    return 'DashboardState.saved()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardEntrySavedStateImpl);
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
    required TResult Function() saved,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedLocal,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedOnline,
    required TResult Function(String feedback) failure,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? saved,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
    TResult? Function(String feedback)? failure,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? saved,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DashboardState value) initial,
    required TResult Function(DashboardLoadedState value) loaded,
    required TResult Function(DashboardLoadingState value) loading,
    required TResult Function(DashboardSuccessState value) success,
    required TResult Function(DashboardEntrySavedState value) saved,
    required TResult Function(DashboardFetchedLocalState value) fetchedLocal,
    required TResult Function(DashboardFetchedOnlineState value) fetchedOnline,
    required TResult Function(DashboardFailureState value) failure,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DashboardState value)? initial,
    TResult? Function(DashboardLoadedState value)? loaded,
    TResult? Function(DashboardLoadingState value)? loading,
    TResult? Function(DashboardSuccessState value)? success,
    TResult? Function(DashboardEntrySavedState value)? saved,
    TResult? Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult? Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult? Function(DashboardFailureState value)? failure,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DashboardState value)? initial,
    TResult Function(DashboardLoadedState value)? loaded,
    TResult Function(DashboardLoadingState value)? loading,
    TResult Function(DashboardSuccessState value)? success,
    TResult Function(DashboardEntrySavedState value)? saved,
    TResult Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult Function(DashboardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class DashboardEntrySavedState implements DashboardState {
  const factory DashboardEntrySavedState() = _$DashboardEntrySavedStateImpl;
}

/// @nodoc
abstract class _$$DashboardFetchedLocalStateImplCopyWith<$Res> {
  factory _$$DashboardFetchedLocalStateImplCopyWith(
          _$DashboardFetchedLocalStateImpl value,
          $Res Function(_$DashboardFetchedLocalStateImpl) then) =
      __$$DashboardFetchedLocalStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Habit> habits, List<HabitEntry> entries});
}

/// @nodoc
class __$$DashboardFetchedLocalStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardFetchedLocalStateImpl>
    implements _$$DashboardFetchedLocalStateImplCopyWith<$Res> {
  __$$DashboardFetchedLocalStateImplCopyWithImpl(
      _$DashboardFetchedLocalStateImpl _value,
      $Res Function(_$DashboardFetchedLocalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habits = null,
    Object? entries = null,
  }) {
    return _then(_$DashboardFetchedLocalStateImpl(
      null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
      null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<HabitEntry>,
    ));
  }
}

/// @nodoc

class _$DashboardFetchedLocalStateImpl implements DashboardFetchedLocalState {
  const _$DashboardFetchedLocalStateImpl(
      final List<Habit> habits, final List<HabitEntry> entries)
      : _habits = habits,
        _entries = entries;

  final List<Habit> _habits;
  @override
  List<Habit> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  final List<HabitEntry> _entries;
  @override
  List<HabitEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  String toString() {
    return 'DashboardState.fetchedLocal(habits: $habits, entries: $entries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardFetchedLocalStateImpl &&
            const DeepCollectionEquality().equals(other._habits, _habits) &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_habits),
      const DeepCollectionEquality().hash(_entries));

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardFetchedLocalStateImplCopyWith<_$DashboardFetchedLocalStateImpl>
      get copyWith => __$$DashboardFetchedLocalStateImplCopyWithImpl<
          _$DashboardFetchedLocalStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() saved,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedLocal,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedOnline,
    required TResult Function(String feedback) failure,
  }) {
    return fetchedLocal(habits, entries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? saved,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
    TResult? Function(String feedback)? failure,
  }) {
    return fetchedLocal?.call(habits, entries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? saved,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) {
    if (fetchedLocal != null) {
      return fetchedLocal(habits, entries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DashboardState value) initial,
    required TResult Function(DashboardLoadedState value) loaded,
    required TResult Function(DashboardLoadingState value) loading,
    required TResult Function(DashboardSuccessState value) success,
    required TResult Function(DashboardEntrySavedState value) saved,
    required TResult Function(DashboardFetchedLocalState value) fetchedLocal,
    required TResult Function(DashboardFetchedOnlineState value) fetchedOnline,
    required TResult Function(DashboardFailureState value) failure,
  }) {
    return fetchedLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DashboardState value)? initial,
    TResult? Function(DashboardLoadedState value)? loaded,
    TResult? Function(DashboardLoadingState value)? loading,
    TResult? Function(DashboardSuccessState value)? success,
    TResult? Function(DashboardEntrySavedState value)? saved,
    TResult? Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult? Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult? Function(DashboardFailureState value)? failure,
  }) {
    return fetchedLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DashboardState value)? initial,
    TResult Function(DashboardLoadedState value)? loaded,
    TResult Function(DashboardLoadingState value)? loading,
    TResult Function(DashboardSuccessState value)? success,
    TResult Function(DashboardEntrySavedState value)? saved,
    TResult Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult Function(DashboardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (fetchedLocal != null) {
      return fetchedLocal(this);
    }
    return orElse();
  }
}

abstract class DashboardFetchedLocalState implements DashboardState {
  const factory DashboardFetchedLocalState(
          final List<Habit> habits, final List<HabitEntry> entries) =
      _$DashboardFetchedLocalStateImpl;

  List<Habit> get habits;
  List<HabitEntry> get entries;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardFetchedLocalStateImplCopyWith<_$DashboardFetchedLocalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DashboardFetchedOnlineStateImplCopyWith<$Res> {
  factory _$$DashboardFetchedOnlineStateImplCopyWith(
          _$DashboardFetchedOnlineStateImpl value,
          $Res Function(_$DashboardFetchedOnlineStateImpl) then) =
      __$$DashboardFetchedOnlineStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Habit> habits, List<HabitEntry> entries});
}

/// @nodoc
class __$$DashboardFetchedOnlineStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res,
        _$DashboardFetchedOnlineStateImpl>
    implements _$$DashboardFetchedOnlineStateImplCopyWith<$Res> {
  __$$DashboardFetchedOnlineStateImplCopyWithImpl(
      _$DashboardFetchedOnlineStateImpl _value,
      $Res Function(_$DashboardFetchedOnlineStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habits = null,
    Object? entries = null,
  }) {
    return _then(_$DashboardFetchedOnlineStateImpl(
      null == habits
          ? _value._habits
          : habits // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
      null == entries
          ? _value._entries
          : entries // ignore: cast_nullable_to_non_nullable
              as List<HabitEntry>,
    ));
  }
}

/// @nodoc

class _$DashboardFetchedOnlineStateImpl implements DashboardFetchedOnlineState {
  const _$DashboardFetchedOnlineStateImpl(
      final List<Habit> habits, final List<HabitEntry> entries)
      : _habits = habits,
        _entries = entries;

  final List<Habit> _habits;
  @override
  List<Habit> get habits {
    if (_habits is EqualUnmodifiableListView) return _habits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habits);
  }

  final List<HabitEntry> _entries;
  @override
  List<HabitEntry> get entries {
    if (_entries is EqualUnmodifiableListView) return _entries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_entries);
  }

  @override
  String toString() {
    return 'DashboardState.fetchedOnline(habits: $habits, entries: $entries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardFetchedOnlineStateImpl &&
            const DeepCollectionEquality().equals(other._habits, _habits) &&
            const DeepCollectionEquality().equals(other._entries, _entries));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_habits),
      const DeepCollectionEquality().hash(_entries));

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardFetchedOnlineStateImplCopyWith<_$DashboardFetchedOnlineStateImpl>
      get copyWith => __$$DashboardFetchedOnlineStateImplCopyWithImpl<
          _$DashboardFetchedOnlineStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() saved,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedLocal,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedOnline,
    required TResult Function(String feedback) failure,
  }) {
    return fetchedOnline(habits, entries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loaded,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? saved,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
    TResult? Function(String feedback)? failure,
  }) {
    return fetchedOnline?.call(habits, entries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loaded,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? saved,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
    TResult Function(String feedback)? failure,
    required TResult orElse(),
  }) {
    if (fetchedOnline != null) {
      return fetchedOnline(habits, entries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DashboardState value) initial,
    required TResult Function(DashboardLoadedState value) loaded,
    required TResult Function(DashboardLoadingState value) loading,
    required TResult Function(DashboardSuccessState value) success,
    required TResult Function(DashboardEntrySavedState value) saved,
    required TResult Function(DashboardFetchedLocalState value) fetchedLocal,
    required TResult Function(DashboardFetchedOnlineState value) fetchedOnline,
    required TResult Function(DashboardFailureState value) failure,
  }) {
    return fetchedOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DashboardState value)? initial,
    TResult? Function(DashboardLoadedState value)? loaded,
    TResult? Function(DashboardLoadingState value)? loading,
    TResult? Function(DashboardSuccessState value)? success,
    TResult? Function(DashboardEntrySavedState value)? saved,
    TResult? Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult? Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult? Function(DashboardFailureState value)? failure,
  }) {
    return fetchedOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DashboardState value)? initial,
    TResult Function(DashboardLoadedState value)? loaded,
    TResult Function(DashboardLoadingState value)? loading,
    TResult Function(DashboardSuccessState value)? success,
    TResult Function(DashboardEntrySavedState value)? saved,
    TResult Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult Function(DashboardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (fetchedOnline != null) {
      return fetchedOnline(this);
    }
    return orElse();
  }
}

abstract class DashboardFetchedOnlineState implements DashboardState {
  const factory DashboardFetchedOnlineState(
          final List<Habit> habits, final List<HabitEntry> entries) =
      _$DashboardFetchedOnlineStateImpl;

  List<Habit> get habits;
  List<HabitEntry> get entries;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardFetchedOnlineStateImplCopyWith<_$DashboardFetchedOnlineStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DashboardFailureStateImplCopyWith<$Res> {
  factory _$$DashboardFailureStateImplCopyWith(
          _$DashboardFailureStateImpl value,
          $Res Function(_$DashboardFailureStateImpl) then) =
      __$$DashboardFailureStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String feedback});
}

/// @nodoc
class __$$DashboardFailureStateImplCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$DashboardFailureStateImpl>
    implements _$$DashboardFailureStateImplCopyWith<$Res> {
  __$$DashboardFailureStateImplCopyWithImpl(_$DashboardFailureStateImpl _value,
      $Res Function(_$DashboardFailureStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = null,
  }) {
    return _then(_$DashboardFailureStateImpl(
      null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DashboardFailureStateImpl implements DashboardFailureState {
  const _$DashboardFailureStateImpl(this.feedback);

  @override
  final String feedback;

  @override
  String toString() {
    return 'DashboardState.failure(feedback: $feedback)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardFailureStateImpl &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedback);

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardFailureStateImplCopyWith<_$DashboardFailureStateImpl>
      get copyWith => __$$DashboardFailureStateImplCopyWithImpl<
          _$DashboardFailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loaded,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() saved,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedLocal,
    required TResult Function(List<Habit> habits, List<HabitEntry> entries)
        fetchedOnline,
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
    TResult? Function()? saved,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult? Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    TResult Function()? saved,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedLocal,
    TResult Function(List<Habit> habits, List<HabitEntry> entries)?
        fetchedOnline,
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
    required TResult Function(_DashboardState value) initial,
    required TResult Function(DashboardLoadedState value) loaded,
    required TResult Function(DashboardLoadingState value) loading,
    required TResult Function(DashboardSuccessState value) success,
    required TResult Function(DashboardEntrySavedState value) saved,
    required TResult Function(DashboardFetchedLocalState value) fetchedLocal,
    required TResult Function(DashboardFetchedOnlineState value) fetchedOnline,
    required TResult Function(DashboardFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DashboardState value)? initial,
    TResult? Function(DashboardLoadedState value)? loaded,
    TResult? Function(DashboardLoadingState value)? loading,
    TResult? Function(DashboardSuccessState value)? success,
    TResult? Function(DashboardEntrySavedState value)? saved,
    TResult? Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult? Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult? Function(DashboardFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DashboardState value)? initial,
    TResult Function(DashboardLoadedState value)? loaded,
    TResult Function(DashboardLoadingState value)? loading,
    TResult Function(DashboardSuccessState value)? success,
    TResult Function(DashboardEntrySavedState value)? saved,
    TResult Function(DashboardFetchedLocalState value)? fetchedLocal,
    TResult Function(DashboardFetchedOnlineState value)? fetchedOnline,
    TResult Function(DashboardFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DashboardFailureState implements DashboardState {
  const factory DashboardFailureState(final String feedback) =
      _$DashboardFailureStateImpl;

  String get feedback;

  /// Create a copy of DashboardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardFailureStateImplCopyWith<_$DashboardFailureStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
