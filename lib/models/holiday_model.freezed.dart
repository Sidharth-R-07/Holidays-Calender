// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holiday_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Holiday {
  String get name => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  /// Create a copy of Holiday
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HolidayCopyWith<Holiday> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HolidayCopyWith<$Res> {
  factory $HolidayCopyWith(Holiday value, $Res Function(Holiday) then) =
      _$HolidayCopyWithImpl<$Res, Holiday>;
  @useResult
  $Res call({String name, String date});
}

/// @nodoc
class _$HolidayCopyWithImpl<$Res, $Val extends Holiday>
    implements $HolidayCopyWith<$Res> {
  _$HolidayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Holiday
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HolidayImplCopyWith<$Res> implements $HolidayCopyWith<$Res> {
  factory _$$HolidayImplCopyWith(
          _$HolidayImpl value, $Res Function(_$HolidayImpl) then) =
      __$$HolidayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String date});
}

/// @nodoc
class __$$HolidayImplCopyWithImpl<$Res>
    extends _$HolidayCopyWithImpl<$Res, _$HolidayImpl>
    implements _$$HolidayImplCopyWith<$Res> {
  __$$HolidayImplCopyWithImpl(
      _$HolidayImpl _value, $Res Function(_$HolidayImpl) _then)
      : super(_value, _then);

  /// Create a copy of Holiday
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? date = null,
  }) {
    return _then(_$HolidayImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HolidayImpl implements _Holiday {
  const _$HolidayImpl({required this.name, required this.date});

  @override
  final String name;
  @override
  final String date;

  @override
  String toString() {
    return 'Holiday(name: $name, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HolidayImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, date);

  /// Create a copy of Holiday
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HolidayImplCopyWith<_$HolidayImpl> get copyWith =>
      __$$HolidayImplCopyWithImpl<_$HolidayImpl>(this, _$identity);
}

abstract class _Holiday implements Holiday {
  const factory _Holiday(
      {required final String name, required final String date}) = _$HolidayImpl;

  @override
  String get name;
  @override
  String get date;

  /// Create a copy of Holiday
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HolidayImplCopyWith<_$HolidayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
