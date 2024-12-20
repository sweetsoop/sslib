class SSDateTimeFormat {
  static String formatMinSec(int seconds) {
    final minute = seconds ~/ 60;
    final remainSeconds = seconds % 60;
    String formatted = '${minute.toString().padLeft(2, '0')}분';
    if (remainSeconds != 0) {
      formatted = '$formatted ${remainSeconds.toString().padLeft(2, '0')}초';
    }
    return formatted;
  }
}