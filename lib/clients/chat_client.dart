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
            "Authorization": "",
          },
        ),
      )..interceptors.add(TalkerDioLogger(talker: logger)),
    );
  }

  factory ChatClient(Dio dio, {String? baseUrl, ParseErrorLogger? errorLogger}) = _ChatClient;

  @POST('')
  Future<ChatResponse> getSuggestion({@Body() required ChatRequest request});
}
