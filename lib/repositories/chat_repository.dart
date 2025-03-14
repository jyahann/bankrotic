// //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

// curl https://api.openai.com/v1/chat/completions \
//   -H "Content-Type: application/json" \
//   -H "" \
//   -d '{
//     "model": "gpt-4o-mini",
//     "store": true,
//     "messages": [
//       {"role": "user", "content": "write a haiku about ai"}
//     ]
//   }'

import 'package:bankrotik/clients/chat_client.dart';
import 'package:bankrotik/models/chat_request.dart';

final class ChatRepository {
  static const instance = ChatRepository._();

  const ChatRepository._();

  ChatClient get _chatClient => ChatClient.build();

  Future<String> getCompletion(String content) async {
    return _chatClient
        .getSuggestion(
          request: ChatRequest(
            model: "gpt-4o-mini",
            store: true,
            messages: [Message(role: "user", content: content)],
          ),
        )
        .then((resp) => resp.choices.first.message.content);
  }
}
