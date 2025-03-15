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
  }) = _ChatResponse;

  factory ChatResponse.fromJson(Map<String, Object?> json) =>
      _$ChatResponseFromJson(json);
}

@freezed
sealed class Choice with _$Choice {
  const factory Choice({required int index, required Message message}) =
      _Choice;

  factory Choice.fromJson(Map<String, Object?> json) => _$ChoiceFromJson(json);
}

@freezed
sealed class Message with _$Message {
  const factory Message({required String role, required String content}) =
      _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
