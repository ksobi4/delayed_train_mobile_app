import 'package:dartz/dartz.dart';
import 'package:delayed_train/core/dio_client.dart';
import 'package:delayed_train/core/error/failures.dart';
import 'package:delayed_train/models/station_list.dart';
import 'package:dio/dio.dart';

class StationRepository {
  HttpClient client;

  StationRepository({
    required this.client,
  });

  Future<StationList> getFullStationName(String rawStation) async {
    try {
      Response res = await client.dio.get(
        '/station_name',
        queryParameters: {'raw_station': rawStation},
      );

      if (res.statusCode == 200) {
        return StationList(list: res.data);
      } else {
        throw ServerFailure(message: 'status code = ${res.statusCode}');
      }
    } catch (err) {
      throw ServerFailure(message: 'err = ${err.toString()}');
    }
  }
}
