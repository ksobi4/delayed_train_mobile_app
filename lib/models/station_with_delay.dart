import 'package:delayed_train/models/train_on_station.dart';
import 'package:json_annotation/json_annotation.dart';
part 'station_with_delay.g.dart';

@JsonSerializable(explicitToJson: true)
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

  factory StationWithDelay.fromJson(Map<String, dynamic> json) =>
      _$StationWithDelayFromJson(json);
  Map<String, dynamic> toJson() => _$StationWithDelayToJson(this);
}
