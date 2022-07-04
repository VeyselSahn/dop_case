// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:io';

import 'package:intl/intl.dart';
import 'package:translator/translator.dart';

class TimeModel {
  String? barStatusText;
  String? dayText;
  String? dayNumber;
  String? monthText;
  String? year;
  String? offset;
  String? region;
  String? location;
  String? hour;
  String? minute;

  TimeModel(
      {this.barStatusText,
      this.dayText,
      this.dayNumber,
      this.monthText,
      this.year,
      this.offset,
      this.region,
      this.location,
      this.hour,
      this.minute});

  Future<TimeModel> fromJson(Map<String, dynamic>? json) async {
    //detect device locale
    var locale = Platform.localeName.split(r'_').elementAt(0);
    // for translating texts , days and months
    var _translator = GoogleTranslator();
    // thats for spliting are because we will use different text , like 'Wednesday , 22' or '22 , Wednesday' spliting make easier
    var locations = (json?['timezone'] as String).split(r'/');
    // parsing time
    var offset = json?['utc_offset'] ?? '';
    var time = convertDateTime(json?['utc_datetime'] ?? '', offset);

    //convert to text and translate
    var _day = await _translator.translate(DateFormat('EEEE').format(time), from: 'en', to: locale);
    var _month = await _translator.translate(DateFormat('MMMM').format(time), from: 'en', to: locale);
    // deciding bar text and translate
    var _barText = decidingTheDay(time.hour);
    var _trBarText = await _translator.translate(_barText, from: 'en', to: locale);

    return TimeModel(
        barStatusText: _trBarText.text,
        dayNumber: time.day.toString(),
        year: time.year.toString(),
        dayText: _day.text,
        monthText: _month.text,
        offset: 'GMT $offset',
        region: locations.length == 3 ? locations.elementAt(1) : locations.elementAt(0),
        location: locations.length == 3 ? locations.elementAt(2) : locations.elementAt(1),
        hour: time.hour.toString().padLeft(2, '0'),
        minute: time.minute.toString().padLeft(2, '0'));
  }

  String decidingTheDay(int hour) {
    //thats all my idea not offical :)
    if (6 < hour && hour < 12) {
      return 'Good Morning';
    } else if (hour >= 12 && hour < 18) {
      return 'Good Afternoon';
    } else if (hour >= 18 && hour < 24) {
      return 'Good Evening';
    } else {
      return 'Good Night';
    }
  }

  DateTime convertDateTime(String utctime, String offset) {
    var cleaned = utctime.split(r'+');
    var offsetList = offset.split(r':');
    var parsed = DateTime.parse(cleaned.elementAt(0));
    var time =
        (parsed.add(Duration(hours: int.parse(offsetList.elementAt(0)), minutes: int.parse(offsetList.elementAt(1)))));
    return time;
  }
}

/*
{
    "abbreviation": "+03",
    "client_ip": "95.70.129.220",
    "datetime": "2022-07-03T21:37:47.359369+03:00",
    "day_of_week": 0,
    "day_of_year": 184,
    "dst": false,
    "dst_from": null,
    "dst_offset": 0,
    "dst_until": null,
    "raw_offset": 10800,
    "timezone": "Europe/Istanbul",
    "unixtime": 1656873467,
    "utc_datetime": "2022-07-03T18:37:47.359369+00:00",
    "utc_offset": "+03:00",
    "week_number": 26
}*/