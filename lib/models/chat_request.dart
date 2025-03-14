import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_request.freezed.dart';
part 'chat_request.g.dart';

@freezed
sealed class ChatRequest with _$ChatRequest {
  const factory ChatRequest({
    required String model,
    bool? store,
    required List<Message> messages,
  }) = _ChatRequest;

  factory ChatRequest.fromJson(Map<String, Object?> json) =>
      _$ChatRequestFromJson(json);
}

@freezed
sealed class Message with _$Message {
  const factory Message({required String role, required String content}) =
      _Message;

  factory Message.fromJson(Map<String, Object?> json) =>
      _$MessageFromJson(json);
}
