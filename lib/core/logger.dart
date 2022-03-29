import 'package:logger/logger.dart';

class SimpleLogPrinter extends LogPrinter {
  final String className;

  SimpleLogPrinter(this.className);

  @override
  List<String> log(LogEvent event) {
    return [event.message];
  }
}

Logger getLogger(String className) {
  return Logger(printer: PrefixPrinter(PrettyPrinter(colors: true)));
}
