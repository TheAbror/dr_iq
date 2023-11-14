// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: type=lint
final class _$QuestionsService extends QuestionsService {
  _$QuestionsService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = QuestionsService;

  @override
  Future<Response<List<QuestionsResponse>>> getQuestions() {
    final Uri $url = Uri.parse('http://127.0.0.1:8000/questions/');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<List<QuestionsResponse>, QuestionsResponse>($request);
  }
}
