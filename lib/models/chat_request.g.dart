// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatRequest _$ChatRequestFromJson(Map<String, dynamic> json) => _ChatRequest(
  model: json['model'] as String,
  store: json['store'] as bool?,
  messages:
      (json['messages'] as List<dynamic>)
          .map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ChatRequestToJson(_ChatRequest instance) =>
    <String, dynamic>{
      'model': instance.model,
      'store': instance.store,
      'messages': instance.messages,
    };

_Message _$MessageFromJson(Map<String, dynamic> json) =>
    _Message(role: json['role'] as String, content: json['content'] as String);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'role': instance.role,
  'content': instance.content,
};
