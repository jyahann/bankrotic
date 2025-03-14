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
      usage: Usage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChatResponseToJson(_ChatResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'created': instance.created,
      'choices': instance.choices,
      'usage': instance.usage,
    };

_Choice _$ChoiceFromJson(Map<String, dynamic> json) => _Choice(
  index: (json['index'] as num).toInt(),
  message: Message.fromJson(json['message'] as Map<String, dynamic>),
  finishReason: json['finishReason'] as String,
);

Map<String, dynamic> _$ChoiceToJson(_Choice instance) => <String, dynamic>{
  'index': instance.index,
  'message': instance.message,
  'finishReason': instance.finishReason,
};

_Usage _$UsageFromJson(Map<String, dynamic> json) => _Usage(
  promptTokens: (json['promptTokens'] as num).toInt(),
  completionTokens: (json['completionTokens'] as num).toInt(),
  totalTokens: (json['totalTokens'] as num).toInt(),
);

Map<String, dynamic> _$UsageToJson(_Usage instance) => <String, dynamic>{
  'promptTokens': instance.promptTokens,
  'completionTokens': instance.completionTokens,
  'totalTokens': instance.totalTokens,
};
