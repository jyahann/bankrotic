import 'package:bankrotik/logger/logger.dart';
import 'package:bankrotik/models/chat_request.dart';
import 'package:bankrotik/models/chat_response.dart';
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

  factory ChatClient(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) = _ChatClient;

  @POST('')
  Future<ChatResponse> getSuggestion({@Body() required ChatRequest request});
}
