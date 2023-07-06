// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:delayed_train/models/connection_part.dart';
import 'package:json_annotation/json_annotation.dart';
part 'connection.g.dart';

@JsonSerializable(explicitToJson: true)
class Connection {
  String startTime;
  String endTime;
  String travelTime;
  String amountOfChanges;
  List<ConnectionPart> trainList;

  Connection({
    required this.startTime,
    required this.endTime,
    required this.travelTime,
    required this.amountOfChanges,
    required this.trainList,
  });

  factory Connection.fromJson(Map<String, dynamic> json) =>
      _$ConnectionFromJson(json);
  Map<String, dynamic> toJson() => _$ConnectionToJson(this);
}
