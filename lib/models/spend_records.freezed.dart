// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'spend_records.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpendRecord {

 DateTime get date; List<Spend> get spends;
/// Create a copy of SpendRecord
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendRecordCopyWith<SpendRecord> get copyWith => _$SpendRecordCopyWithImpl<SpendRecord>(this as SpendRecord, _$identity);

  /// Serializes this SpendRecord to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpendRecord&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.spends, spends));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(spends));

@override
String toString() {
  return 'SpendRecord(date: $date, spends: $spends)';
}


}

/// @nodoc
abstract mixin class $SpendRecordCopyWith<$Res>  {
  factory $SpendRecordCopyWith(SpendRecord value, $Res Function(SpendRecord) _then) = _$SpendRecordCopyWithImpl;
@useResult
$Res call({
 DateTime date, List<Spend> spends
});




}
/// @nodoc
class _$SpendRecordCopyWithImpl<$Res>
    implements $SpendRecordCopyWith<$Res> {
  _$SpendRecordCopyWithImpl(this._self, this._then);

  final SpendRecord _self;
  final $Res Function(SpendRecord) _then;

/// Create a copy of SpendRecord
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? spends = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,spends: null == spends ? _self.spends : spends // ignore: cast_nullable_to_non_nullable
as List<Spend>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SpendRecord implements SpendRecord {
  const _SpendRecord({required this.date, required final  List<Spend> spends}): _spends = spends;
  factory _SpendRecord.fromJson(Map<String, dynamic> json) => _$SpendRecordFromJson(json);

@override final  DateTime date;
 final  List<Spend> _spends;
@override List<Spend> get spends {
  if (_spends is EqualUnmodifiableListView) return _spends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_spends);
}


/// Create a copy of SpendRecord
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpendRecordCopyWith<_SpendRecord> get copyWith => __$SpendRecordCopyWithImpl<_SpendRecord>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpendRecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpendRecord&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._spends, _spends));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_spends));

@override
String toString() {
  return 'SpendRecord(date: $date, spends: $spends)';
}


}

/// @nodoc
abstract mixin class _$SpendRecordCopyWith<$Res> implements $SpendRecordCopyWith<$Res> {
  factory _$SpendRecordCopyWith(_SpendRecord value, $Res Function(_SpendRecord) _then) = __$SpendRecordCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, List<Spend> spends
});




}
/// @nodoc
class __$SpendRecordCopyWithImpl<$Res>
    implements _$SpendRecordCopyWith<$Res> {
  __$SpendRecordCopyWithImpl(this._self, this._then);

  final _SpendRecord _self;
  final $Res Function(_SpendRecord) _then;

/// Create a copy of SpendRecord
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? spends = null,}) {
  return _then(_SpendRecord(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,spends: null == spends ? _self._spends : spends // ignore: cast_nullable_to_non_nullable
as List<Spend>,
  ));
}


}


/// @nodoc
mixin _$Spend {

 String get reason; String get amount;
/// Create a copy of Spend
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendCopyWith<Spend> get copyWith => _$SpendCopyWithImpl<Spend>(this as Spend, _$identity);

  /// Serializes this Spend to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Spend&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason,amount);

@override
String toString() {
  return 'Spend(reason: $reason, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $SpendCopyWith<$Res>  {
  factory $SpendCopyWith(Spend value, $Res Function(Spend) _then) = _$SpendCopyWithImpl;
@useResult
$Res call({
 String reason, String amount
});




}
/// @nodoc
class _$SpendCopyWithImpl<$Res>
    implements $SpendCopyWith<$Res> {
  _$SpendCopyWithImpl(this._self, this._then);

  final Spend _self;
  final $Res Function(Spend) _then;

/// Create a copy of Spend
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reason = null,Object? amount = null,}) {
  return _then(_self.copyWith(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Spend extends Spend {
  const _Spend({required this.reason, required this.amount}): super._();
  factory _Spend.fromJson(Map<String, dynamic> json) => _$SpendFromJson(json);

@override final  String reason;
@override final  String amount;

/// Create a copy of Spend
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpendCopyWith<_Spend> get copyWith => __$SpendCopyWithImpl<_Spend>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpendToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Spend&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reason,amount);

@override
String toString() {
  return 'Spend(reason: $reason, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$SpendCopyWith<$Res> implements $SpendCopyWith<$Res> {
  factory _$SpendCopyWith(_Spend value, $Res Function(_Spend) _then) = __$SpendCopyWithImpl;
@override @useResult
$Res call({
 String reason, String amount
});




}
/// @nodoc
class __$SpendCopyWithImpl<$Res>
    implements _$SpendCopyWith<$Res> {
  __$SpendCopyWithImpl(this._self, this._then);

  final _Spend _self;
  final $Res Function(_Spend) _then;

/// Create a copy of Spend
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reason = null,Object? amount = null,}) {
  return _then(_Spend(
reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
