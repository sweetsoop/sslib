import 'package:flutter_dotenv/flutter_dotenv.dart';

class SSEnv {
  static Future<void> load({String fileName = '.env'}) async => await dotenv.load(fileName: fileName);

  static String get(String key, {String? fallback}) => dotenv.get(key, fallback: fallback);
  static bool getBool(String key, {bool? fallback}) => dotenv.getBool(key, fallback: fallback);
  static int getInt(String key, {int? fallback}) => dotenv.getInt(key, fallback: fallback);
}
