// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:ffi';

import 'package:delayed_train/models/connection_part.dart';

class Connection {
  String startTime;
  String endTime;
  String travelTime;
  Int amountOfChanges;
  List<ConnectionPart> trainList;

  Connection({
    required this.startTime,
    required this.endTime,
    required this.travelTime,
    required this.amountOfChanges,
    required this.trainList,
  });
}
