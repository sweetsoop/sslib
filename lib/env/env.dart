import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  Future<void> load({String fileName = '.env'}) async => await dotenv.load(fileName: fileName);

  String get(String key, {String? fallback}) => dotenv.get(key, fallback: fallback);
  bool getBool(String key, {bool? fallback}) => dotenv.getBool(key, fallback: fallback);
  int getInt(String key, {int? fallback}) => dotenv.getInt(key, fallback: fallback);
}
