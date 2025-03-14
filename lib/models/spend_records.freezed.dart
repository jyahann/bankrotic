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
mixin _$Record {

 DateTime get date; Set<Spend> get spends;
/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordCopyWith<Record> get copyWith => _$RecordCopyWithImpl<Record>(this as Record, _$identity);

  /// Serializes this Record to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Record&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other.spends, spends));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(spends));

@override
String toString() {
  return 'Record(date: $date, spends: $spends)';
}


}

/// @nodoc
abstract mixin class $RecordCopyWith<$Res>  {
  factory $RecordCopyWith(Record value, $Res Function(Record) _then) = _$RecordCopyWithImpl;
@useResult
$Res call({
 DateTime date, Set<Spend> spends
});




}
/// @nodoc
class _$RecordCopyWithImpl<$Res>
    implements $RecordCopyWith<$Res> {
  _$RecordCopyWithImpl(this._self, this._then);

  final Record _self;
  final $Res Function(Record) _then;

/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? spends = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,spends: null == spends ? _self.spends : spends // ignore: cast_nullable_to_non_nullable
as Set<Spend>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Record implements Record {
  const _Record({required this.date, required final  Set<Spend> spends}): _spends = spends;
  factory _Record.fromJson(Map<String, dynamic> json) => _$RecordFromJson(json);

@override final  DateTime date;
 final  Set<Spend> _spends;
@override Set<Spend> get spends {
  if (_spends is EqualUnmodifiableSetView) return _spends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableSetView(_spends);
}


/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordCopyWith<_Record> get copyWith => __$RecordCopyWithImpl<_Record>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RecordToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Record&&(identical(other.date, date) || other.date == date)&&const DeepCollectionEquality().equals(other._spends, _spends));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,const DeepCollectionEquality().hash(_spends));

@override
String toString() {
  return 'Record(date: $date, spends: $spends)';
}


}

/// @nodoc
abstract mixin class _$RecordCopyWith<$Res> implements $RecordCopyWith<$Res> {
  factory _$RecordCopyWith(_Record value, $Res Function(_Record) _then) = __$RecordCopyWithImpl;
@override @useResult
$Res call({
 DateTime date, Set<Spend> spends
});




}
/// @nodoc
class __$RecordCopyWithImpl<$Res>
    implements _$RecordCopyWith<$Res> {
  __$RecordCopyWithImpl(this._self, this._then);

  final _Record _self;
  final $Res Function(_Record) _then;

/// Create a copy of Record
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? spends = null,}) {
  return _then(_Record(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime,spends: null == spends ? _self._spends : spends // ignore: cast_nullable_to_non_nullable
as Set<Spend>,
  ));
}


}


/// @nodoc
mixin _$Spend {

 String get tag; int get cash;
/// Create a copy of Spend
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpendCopyWith<Spend> get copyWith => _$SpendCopyWithImpl<Spend>(this as Spend, _$identity);

  /// Serializes this Spend to a JSON map.
  Map<String, dynamic> toJson();




@override
String toString() {
  return 'Spend(tag: $tag, cash: $cash)';
}


}

/// @nodoc
abstract mixin class $SpendCopyWith<$Res>  {
  factory $SpendCopyWith(Spend value, $Res Function(Spend) _then) = _$SpendCopyWithImpl;
@useResult
$Res call({
 String tag, int cash
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
@pragma('vm:prefer-inline') @override $Res call({Object? tag = null,Object? cash = null,}) {
  return _then(_self.copyWith(
tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,cash: null == cash ? _self.cash : cash // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Spend extends Spend {
  const _Spend({required this.tag, required this.cash}): super._();
  factory _Spend.fromJson(Map<String, dynamic> json) => _$SpendFromJson(json);

@override final  String tag;
@override final  int cash;

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
String toString() {
  return 'Spend(tag: $tag, cash: $cash)';
}


}

/// @nodoc
abstract mixin class _$SpendCopyWith<$Res> implements $SpendCopyWith<$Res> {
  factory _$SpendCopyWith(_Spend value, $Res Function(_Spend) _then) = __$SpendCopyWithImpl;
@override @useResult
$Res call({
 String tag, int cash
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
@override @pragma('vm:prefer-inline') $Res call({Object? tag = null,Object? cash = null,}) {
  return _then(_Spend(
tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,cash: null == cash ? _self.cash : cash // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
