import 'package:bankrotik/models/chat_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_response.freezed.dart';
part 'chat_response.g.dart';

@freezed
sealed class ChatResponse with _$ChatResponse {
  const factory ChatResponse({
    required String id,
    required String object,
    required int created,
    required List<Choice> choices,
    required Usage usage,
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, Object?> json) => _$ChatResponseFromJson(json);
}

@freezed
sealed class Choice with _$Choice {
  const factory Choice({
    required int index,
    required Message message,
    required String finishReason,
  }) = _Choice;

  factory Choice.fromJson(Map<String, Object?> json) => _$ChoiceFromJson(json);
}

@freezed
sealed class Usage with _$Usage {
  const factory Usage({
    required int promptTokens,
    required int completionTokens,
    required int totalTokens,
  }) = _Usage;

  factory Usage.fromJson(Map<String, Object?> json) => _$UsageFromJson(json);
}