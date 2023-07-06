// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:json_annotation/json_annotation.dart';
part 'connection_part.g.dart';

@JsonSerializable(explicitToJson: true)
class ConnectionPart {
  String trainNumber;
  String trainName;
  String company;

  String startTime;
  String startStationName;

  String endTime;
  String endStationName;

  String distance;
  ConnectionPart({
    required this.trainNumber,
    required this.trainName,
    required this.company,
    required this.startTime,
    required this.startStationName,
    required this.endTime,
    required this.endStationName,
    required this.distance,
  });

  factory ConnectionPart.fromJson(Map<String, dynamic> json) =>
      _$ConnectionPartFromJson(json);
  Map<String, dynamic> toJson() => _$ConnectionPartToJson(this);
}
