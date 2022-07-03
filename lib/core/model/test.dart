import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:translator/translator.dart';

void main() async {
  /// var translator = GoogleTranslator();
  /// var format = DateFormat().add_MMMM();
  /// var time = DateTime.fromMillisecondsSinceEpoch(1656881948 * 1000, isUtc: false);
  /// print(time.hour);
  /// var _k = await translator.translate(format.format(time), from: 'en', to: 'tr');
  /// print(_k);
  var s = 1;
  print(s.toString().padLeft(2, '0'));
}
