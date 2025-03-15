// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChatResponse _$ChatResponseFromJson(Map<String, dynamic> json) =>
    _ChatResponse(
      id: json['id'] as String,
      object: json['object'] as String,
      created: (json['created'] as num).toInt(),
      choices:
          (json['choices'] as List<dynamic>)
              .map((e) => Choice.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$ChatResponseToJson(_ChatResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'choices': instance.choices,
    };

_Choice _$ChoiceFromJson(Map<String, dynamic> json) => _Choice(
  index: (json['index'] as num).toInt(),
  message: Message.fromJson(json['message'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ChoiceToJson(_Choice instance) => <String, dynamic>{
  'index': instance.index,
  'message': instance.message,
};

_Message _$MessageFromJson(Map<String, dynamic> json) =>
    _Message(role: json['role'] as String, content: json['content'] as String);

Map<String, dynamic> _$MessageToJson(_Message instance) => <String, dynamic>{
  'role': instance.role,
  'content': instance.content,
};
