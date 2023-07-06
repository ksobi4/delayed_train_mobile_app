// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:delayed_train/models/station.dart';
import 'package:json_annotation/json_annotation.dart';
part 'station_list.g.dart';

@JsonSerializable(explicitToJson: true)
class StationList {
  List<Station> list;
  StationList({
    required this.list,
  });

  factory StationList.fromJson(Map<String, dynamic> json) =>
      _$StationListFromJson(json);
  Map<String, dynamic> toJson() => _$StationListToJson(this);
}
