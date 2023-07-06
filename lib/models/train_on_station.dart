// ignore_for_file: public_member_api_docs, sort_constructors_first

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
}
