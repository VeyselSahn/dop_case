class TimeModel {
  String? barStatusText;
  String? dayText;
  String? dayNumber;
  String? monthText;
  String? year;
  String? offset;
  String? region;
  String? location;

  TimeModel(
      {this.barStatusText,
      this.dayText,
      this.dayNumber,
      this.monthText,
      this.year,
      this.offset,
      this.region,
      this.location});

  factory TimeModel.fromJson(Map<String, dynamic>? json) {
    return TimeModel();
  }
}
