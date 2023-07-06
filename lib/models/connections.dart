// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:delayed_train/models/connection.dart';
import 'package:json_annotation/json_annotation.dart';
part 'connections.g.dart';

@JsonSerializable(explicitToJson: true)
class Connections {
  List<Connection> list;
  String startStationName;
  String startStationId;
  String endStationName;
  String endStationId;
  String date;
  String startTime;

  Connections({
    required this.list,
    required this.startStationName,
    required this.startStationId,
    required this.endStationName,
    required this.endStationId,
    required this.date,
    required this.startTime,
  });

  factory Connections.fromJson(Map<String, dynamic> json) =>
      _$ConnectionsFromJson(json);
  Map<String, dynamic> toJson() => _$ConnectionsToJson(this);
}
