import 'package:delayed_train/models/train_on_station.dart';

class Station {
  String date;
  String time;
  String stationName;
  String stationId;
  List<TrainOnStation> list;

  Station({
    required this.date,
    required this.time,
    required this.stationName,
    required this.stationId,
    required this.list,
  });
}
