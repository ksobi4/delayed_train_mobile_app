// ignore_for_file: public_member_api_docs, sort_constructors_first
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
}
