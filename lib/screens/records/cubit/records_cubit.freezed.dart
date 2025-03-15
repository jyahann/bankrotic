// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'records_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RecordsState {

 RecordFormStep get step; SpendRecord? get today; List<SpendRecord> get other; String get amount; String get reason; bool get isAmountValid; bool get isReasonValid; String get chatMessage; bool get chatLoading;
/// Create a copy of RecordsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RecordsStateCopyWith<RecordsState> get copyWith => _$RecordsStateCopyWithImpl<RecordsState>(this as RecordsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RecordsState&&(identical(other.step, step) || other.step == step)&&(identical(other.today, today) || other.today == today)&&const DeepCollectionEquality().equals(other.other, this.other)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.isAmountValid, isAmountValid) || other.isAmountValid == isAmountValid)&&(identical(other.isReasonValid, isReasonValid) || other.isReasonValid == isReasonValid)&&(identical(other.chatMessage, chatMessage) || other.chatMessage == chatMessage)&&(identical(other.chatLoading, chatLoading) || other.chatLoading == chatLoading));
}


@override
int get hashCode => Object.hash(runtimeType,step,today,const DeepCollectionEquality().hash(other),amount,reason,isAmountValid,isReasonValid,chatMessage,chatLoading);

@override
String toString() {
  return 'RecordsState(step: $step, today: $today, other: $other, amount: $amount, reason: $reason, isAmountValid: $isAmountValid, isReasonValid: $isReasonValid, chatMessage: $chatMessage, chatLoading: $chatLoading)';
}


}

/// @nodoc
abstract mixin class $RecordsStateCopyWith<$Res>  {
  factory $RecordsStateCopyWith(RecordsState value, $Res Function(RecordsState) _then) = _$RecordsStateCopyWithImpl;
@useResult
$Res call({
 RecordFormStep step, SpendRecord? today, List<SpendRecord> other, String amount, String reason, bool isAmountValid, bool isReasonValid, String chatMessage, bool chatLoading
});


$SpendRecordCopyWith<$Res>? get today;

}
/// @nodoc
class _$RecordsStateCopyWithImpl<$Res>
    implements $RecordsStateCopyWith<$Res> {
  _$RecordsStateCopyWithImpl(this._self, this._then);

  final RecordsState _self;
  final $Res Function(RecordsState) _then;

/// Create a copy of RecordsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? step = null,Object? today = freezed,Object? other = null,Object? amount = null,Object? reason = null,Object? isAmountValid = null,Object? isReasonValid = null,Object? chatMessage = null,Object? chatLoading = null,}) {
  return _then(_self.copyWith(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as RecordFormStep,today: freezed == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as SpendRecord?,other: null == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as List<SpendRecord>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,isAmountValid: null == isAmountValid ? _self.isAmountValid : isAmountValid // ignore: cast_nullable_to_non_nullable
as bool,isReasonValid: null == isReasonValid ? _self.isReasonValid : isReasonValid // ignore: cast_nullable_to_non_nullable
as bool,chatMessage: null == chatMessage ? _self.chatMessage : chatMessage // ignore: cast_nullable_to_non_nullable
as String,chatLoading: null == chatLoading ? _self.chatLoading : chatLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of RecordsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendRecordCopyWith<$Res>? get today {
    if (_self.today == null) {
    return null;
  }

  return $SpendRecordCopyWith<$Res>(_self.today!, (value) {
    return _then(_self.copyWith(today: value));
  });
}
}


/// @nodoc


class _RecordsState implements RecordsState {
  const _RecordsState({this.step = RecordFormStep.amount, this.today, final  List<SpendRecord> other = const [], this.amount = "", this.reason = "", this.isAmountValid = false, this.isReasonValid = false, this.chatMessage = "", this.chatLoading = false}): _other = other;
  

@override@JsonKey() final  RecordFormStep step;
@override final  SpendRecord? today;
 final  List<SpendRecord> _other;
@override@JsonKey() List<SpendRecord> get other {
  if (_other is EqualUnmodifiableListView) return _other;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_other);
}

@override@JsonKey() final  String amount;
@override@JsonKey() final  String reason;
@override@JsonKey() final  bool isAmountValid;
@override@JsonKey() final  bool isReasonValid;
@override@JsonKey() final  String chatMessage;
@override@JsonKey() final  bool chatLoading;

/// Create a copy of RecordsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RecordsStateCopyWith<_RecordsState> get copyWith => __$RecordsStateCopyWithImpl<_RecordsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RecordsState&&(identical(other.step, step) || other.step == step)&&(identical(other.today, today) || other.today == today)&&const DeepCollectionEquality().equals(other._other, this._other)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.reason, reason) || other.reason == reason)&&(identical(other.isAmountValid, isAmountValid) || other.isAmountValid == isAmountValid)&&(identical(other.isReasonValid, isReasonValid) || other.isReasonValid == isReasonValid)&&(identical(other.chatMessage, chatMessage) || other.chatMessage == chatMessage)&&(identical(other.chatLoading, chatLoading) || other.chatLoading == chatLoading));
}


@override
int get hashCode => Object.hash(runtimeType,step,today,const DeepCollectionEquality().hash(_other),amount,reason,isAmountValid,isReasonValid,chatMessage,chatLoading);

@override
String toString() {
  return 'RecordsState(step: $step, today: $today, other: $other, amount: $amount, reason: $reason, isAmountValid: $isAmountValid, isReasonValid: $isReasonValid, chatMessage: $chatMessage, chatLoading: $chatLoading)';
}


}

/// @nodoc
abstract mixin class _$RecordsStateCopyWith<$Res> implements $RecordsStateCopyWith<$Res> {
  factory _$RecordsStateCopyWith(_RecordsState value, $Res Function(_RecordsState) _then) = __$RecordsStateCopyWithImpl;
@override @useResult
$Res call({
 RecordFormStep step, SpendRecord? today, List<SpendRecord> other, String amount, String reason, bool isAmountValid, bool isReasonValid, String chatMessage, bool chatLoading
});


@override $SpendRecordCopyWith<$Res>? get today;

}
/// @nodoc
class __$RecordsStateCopyWithImpl<$Res>
    implements _$RecordsStateCopyWith<$Res> {
  __$RecordsStateCopyWithImpl(this._self, this._then);

  final _RecordsState _self;
  final $Res Function(_RecordsState) _then;

/// Create a copy of RecordsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? step = null,Object? today = freezed,Object? other = null,Object? amount = null,Object? reason = null,Object? isAmountValid = null,Object? isReasonValid = null,Object? chatMessage = null,Object? chatLoading = null,}) {
  return _then(_RecordsState(
step: null == step ? _self.step : step // ignore: cast_nullable_to_non_nullable
as RecordFormStep,today: freezed == today ? _self.today : today // ignore: cast_nullable_to_non_nullable
as SpendRecord?,other: null == other ? _self._other : other // ignore: cast_nullable_to_non_nullable
as List<SpendRecord>,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as String,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String,isAmountValid: null == isAmountValid ? _self.isAmountValid : isAmountValid // ignore: cast_nullable_to_non_nullable
as bool,isReasonValid: null == isReasonValid ? _self.isReasonValid : isReasonValid // ignore: cast_nullable_to_non_nullable
as bool,chatMessage: null == chatMessage ? _self.chatMessage : chatMessage // ignore: cast_nullable_to_non_nullable
as String,chatLoading: null == chatLoading ? _self.chatLoading : chatLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of RecordsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SpendRecordCopyWith<$Res>? get today {
    if (_self.today == null) {
    return null;
  }

  return $SpendRecordCopyWith<$Res>(_self.today!, (value) {
    return _then(_self.copyWith(today: value));
  });
}
}

// dart format on
