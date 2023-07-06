import 'package:delayed_train/models/train_on_station.dart';

class StationWithDelay {
  String date;
  String time;
  String stationName;
  String stationId;
  List<TrainOnStation> list;

  StationWithDelay({
    required this.date,
    required this.time,
    required this.stationName,
    required this.stationId,
    required this.list,
  });
}
