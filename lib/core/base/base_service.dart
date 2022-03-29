import 'package:logger/logger.dart';

import '../logger.dart';

class BaseServiceModel{
  Logger? log;
  BaseServiceModel({String? title}){
    log = getLogger(
      title ?? runtimeType.toString()
    );
  }
}