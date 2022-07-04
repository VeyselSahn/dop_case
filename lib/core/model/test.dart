/// import 'package:intl/date_symbol_data_file.dart';
/// import 'package:intl/intl.dart';
/// import 'package:translator/translator.dart';

/// /// void main() async {
/// ///   /// var translator = GoogleTranslator();
/// ///   /// var format = DateFormat().add_MMMM();
/// ///   /// var time = DateTime.fromMillisecondsSinceEpoch(1656881948 * 1000, isUtc: false);
/// ///   /// print(time.hour);
/// ///   /// var _k = await translator.translate(format.format(time), from: 'en', to: 'tr');
/// ///   /// print(_k);
/// ///   var s = 1;
/// ///   print(s.toString().padLeft(2, '0'));
/// /// }

/// void main(List<String> args) {
///   var timestring = '2022-07-03T22:43:38.461178+03:12';
///   var sq = timestring.split(r'+');
///   var qq = sq.elementAt(1).split(r':');
///   var parsed = DateTime.parse(sq.elementAt(0));

///   /// DateTime tempDate = new DateFormat("yyyy-MM-dd hh:mm:ss").parse(timestring);
///   print(parsed.add(Duration(hours: int.parse(qq.elementAt(0)), minutes: int.parse(qq.elementAt(1)))));
/// }
