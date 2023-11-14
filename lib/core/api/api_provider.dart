// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:chopper/chopper.dart';
import 'package:http/io_client.dart' as http;
import 'package:dr_iq/core/api/custom_converter.dart';
import 'package:dr_iq/ui/home_page/tabs/take_iq_test_page/services/questions_service.dart';

class ApiProvider {
  static late ChopperClient _client;
  static late QuestionsService questionsService;

  ///Services
  static void create({String? token}) {
    // Added void return type
    _client = ChopperClient(
      client: http.IOClient(
        HttpClient()..connectionTimeout = const Duration(seconds: 40),
      ),
      services: [
        QuestionsService.create(),
      ],
      interceptors: getInterceptors(token),
      converter: CustomDataConverter(),
    );

    questionsService = _client.getService<QuestionsService>();
  }

  static List getInterceptors(token) {
    List interceptors = [];

    interceptors.add(HttpLoggingInterceptor());

    interceptors.add(HeadersInterceptor({
      HttpHeaders.acceptHeader: 'application/json',
      HttpHeaders.contentTypeHeader: 'application/json',
      HttpHeaders.authorizationHeader: token != null ? 'Bearer $token' : '',
    }));

    return interceptors;
  }

  static dispose() {
    _client.dispose();
  }
}
