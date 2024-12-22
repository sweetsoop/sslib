import 'package:intl/date_symbol_data_local.dart';
import 'sslib_platform_interface.dart';

class SSlib {
  SSlib._();
  static final SSlib _instance = SSlib._();
  factory SSlib() => _instance;

  Future<void> init() async {
    await initializeDateFormatting();
  }

  Future<String?> getPlatformVersion() async {
    return SSlibPlatform.instance.getPlatformVersion();
  }
}
