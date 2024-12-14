import 'dart:developer';
import 'package:intl/intl.dart';

mixin LogService {
  String _name = '';
  static const _nameSize = 16;

  void setName(String name) => _name = name.padRight(_nameSize);

  void d(String message) => log('\x1B[32m[$_name] $message\x1B[0m', name: 'SS_DEBUG ${DateFormat('y-MM-dd HH:mm:ss.SSS').format(DateTime.now())}');
  void i(String message) => log('\x1B[37m[$_name] $message\x1B[0m', name: 'SS_INFO  ${DateFormat('y-MM-dd HH:mm:ss.SSS').format(DateTime.now())}');
  void w(String message) => log('\x1B[33m[$_name] $message\x1B[0m', name: 'SS_WARN  ${DateFormat('y-MM-dd HH:mm:ss.SSS').format(DateTime.now())}');
  void e(String message) => log('\x1B[31m[$_name] $message\x1B[0m', name: 'SS_ERROR ${DateFormat('y-MM-dd HH:mm:ss.SSS').format(DateTime.now())}');
}
