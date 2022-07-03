class TimeZoneTileModel {
  String? tileText;
  String? timezonePath;

  TimeZoneTileModel({this.tileText, this.timezonePath});

  factory TimeZoneTileModel.fromJson(String? timezone) {
    return TimeZoneTileModel(tileText: timezone?.replaceAll(r'/', r', ') ?? '', timezonePath: timezone ?? '/');
  }
}
