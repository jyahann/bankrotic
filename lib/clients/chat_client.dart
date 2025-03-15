import 'package:bankrotic/logger/logger.dart';
import 'package:bankrotic/models/chat_request.dart';
import 'package:bankrotic/models/chat_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:talker_dio_logger/talker_dio_logger_interceptor.dart';

part 'chat_client.g.dart';

@RestApi()
abstract class ChatClient {
  factory ChatClient.build() {
    return ChatClient(
      Dio(
        BaseOptions(
          baseUrl: "https://api.openai.com/v1/chat/completions",
          headers: {
            "Content-Type": "application/json",
            "Authorization":
                "Bearer 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",
          },
        ),
      )..interceptors.add(TalkerDioLogger(talker: logger)),
    );
  }

  factory ChatClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _ChatClient;

  @POST('')
  Future<ChatResponse> getSuggestion({@Body() required ChatRequest request});
}
