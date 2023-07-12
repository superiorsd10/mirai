// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mirai_form_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MiraiFormField _$MiraiFormFieldFromJson(Map<String, dynamic> json) {
  return _MiraiFormField.fromJson(json);
}

/// @nodoc
mixin _$MiraiFormField {
  Map<String, dynamic>? get child => throw _privateConstructorUsedError;
  bool get isTypeAction => throw _privateConstructorUsedError;
  String? get valueComparisonKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MiraiFormFieldCopyWith<MiraiFormField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiraiFormFieldCopyWith<$Res> {
  factory $MiraiFormFieldCopyWith(
          MiraiFormField value, $Res Function(MiraiFormField) then) =
      _$MiraiFormFieldCopyWithImpl<$Res, MiraiFormField>;
  @useResult
  $Res call(
      {Map<String, dynamic>? child,
      bool isTypeAction,
      String? valueComparisonKey});
}

/// @nodoc
class _$MiraiFormFieldCopyWithImpl<$Res, $Val extends MiraiFormField>
    implements $MiraiFormFieldCopyWith<$Res> {
  _$MiraiFormFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = freezed,
    Object? isTypeAction = null,
    Object? valueComparisonKey = freezed,
  }) {
    return _then(_value.copyWith(
      child: freezed == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isTypeAction: null == isTypeAction
          ? _value.isTypeAction
          : isTypeAction // ignore: cast_nullable_to_non_nullable
              as bool,
      valueComparisonKey: freezed == valueComparisonKey
          ? _value.valueComparisonKey
          : valueComparisonKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MiraiFormFieldCopyWith<$Res>
    implements $MiraiFormFieldCopyWith<$Res> {
  factory _$$_MiraiFormFieldCopyWith(
          _$_MiraiFormField value, $Res Function(_$_MiraiFormField) then) =
      __$$_MiraiFormFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic>? child,
      bool isTypeAction,
      String? valueComparisonKey});
}

/// @nodoc
class __$$_MiraiFormFieldCopyWithImpl<$Res>
    extends _$MiraiFormFieldCopyWithImpl<$Res, _$_MiraiFormField>
    implements _$$_MiraiFormFieldCopyWith<$Res> {
  __$$_MiraiFormFieldCopyWithImpl(
      _$_MiraiFormField _value, $Res Function(_$_MiraiFormField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = freezed,
    Object? isTypeAction = null,
    Object? valueComparisonKey = freezed,
  }) {
    return _then(_$_MiraiFormField(
      child: freezed == child
          ? _value._child
          : child // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      isTypeAction: null == isTypeAction
          ? _value.isTypeAction
          : isTypeAction // ignore: cast_nullable_to_non_nullable
              as bool,
      valueComparisonKey: freezed == valueComparisonKey
          ? _value.valueComparisonKey
          : valueComparisonKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MiraiFormField implements _MiraiFormField {
  const _$_MiraiFormField(
      {final Map<String, dynamic>? child,
      this.isTypeAction = false,
      this.valueComparisonKey})
      : _child = child;

  factory _$_MiraiFormField.fromJson(Map<String, dynamic> json) =>
      _$$_MiraiFormFieldFromJson(json);

  final Map<String, dynamic>? _child;
  @override
  Map<String, dynamic>? get child {
    final value = _child;
    if (value == null) return null;
    if (_child is EqualUnmodifiableMapView) return _child;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final bool isTypeAction;
  @override
  final String? valueComparisonKey;

  @override
  String toString() {
    return 'MiraiFormField(child: $child, isTypeAction: $isTypeAction, valueComparisonKey: $valueComparisonKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MiraiFormField &&
            const DeepCollectionEquality().equals(other._child, _child) &&
            (identical(other.isTypeAction, isTypeAction) ||
                other.isTypeAction == isTypeAction) &&
            (identical(other.valueComparisonKey, valueComparisonKey) ||
                other.valueComparisonKey == valueComparisonKey));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_child),
      isTypeAction,
      valueComparisonKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MiraiFormFieldCopyWith<_$_MiraiFormField> get copyWith =>
      __$$_MiraiFormFieldCopyWithImpl<_$_MiraiFormField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MiraiFormFieldToJson(
      this,
    );
  }
}

abstract class _MiraiFormField implements MiraiFormField {
  const factory _MiraiFormField(
      {final Map<String, dynamic>? child,
      final bool isTypeAction,
      final String? valueComparisonKey}) = _$_MiraiFormField;

  factory _MiraiFormField.fromJson(Map<String, dynamic> json) =
      _$_MiraiFormField.fromJson;

  @override
  Map<String, dynamic>? get child;
  @override
  bool get isTypeAction;
  @override
  String? get valueComparisonKey;
  @override
  @JsonKey(ignore: true)
  _$$_MiraiFormFieldCopyWith<_$_MiraiFormField> get copyWith =>
      throw _privateConstructorUsedError;
}
