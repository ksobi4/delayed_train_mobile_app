import 'package:dartz/dartz.dart';
import 'package:delayed_train/core/dio_client.dart';
import 'package:delayed_train/core/error/failures.dart';
import 'package:dio/dio.dart';

class StationRepository {
  HttpClient client;

  StationRepository({
    required this.client,
  });

  Future<Either<Failure, String>> getFullStationName(String rawStation) async {
    try {
      Response res = await client.dio.get(
        '/station_name',
        queryParameters: {'raw_station': rawStation},
      );

      if (res.statusCode == 200) {
        return Right('');
      } else {
        return Left(ServerFailure(message: 'status code = ${res.statusCode}'));
      }
    } catch (err) {
      return Left(ServerFailure(message: 'err = ${err.toString()}'));
    }
  }
}
