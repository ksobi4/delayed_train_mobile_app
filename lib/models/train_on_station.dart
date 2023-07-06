// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';

part 'train_on_station.g.dart';

@JsonSerializable(explicitToJson: true)
class TrainOnStation {
  String departureTime;
  bool isDelayed;
  String delayTime;
  String trainNumber;
  String trainCompany;
  String trainName;
  String platform;

  TrainOnStation({
    required this.departureTime,
    required this.isDelayed,
    required this.delayTime,
    required this.trainNumber,
    required this.trainCompany,
    required this.trainName,
    required this.platform,
  });

  factory TrainOnStation.fromJson(Map<String, dynamic> json) =>
      _$TrainOnStationFromJson(json);
  Map<String, dynamic> toJson() => _$TrainOnStationToJson(this);
}
