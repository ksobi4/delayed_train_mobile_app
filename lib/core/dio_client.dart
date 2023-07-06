import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HttpClient {
  Dio dio = Dio(
    BaseOptions(
        baseUrl: dotenv.get('BASE_URL'),
        headers: {
          'Content-Type': 'application/json',
        },
        contentType: 'application/json'),
  );
}
