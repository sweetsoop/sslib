class DateTimeUtil {
  static (int, int) getMinSecFromSeconds(int seconds) {
    final minute = seconds ~/ 60;
    final remainSeconds = seconds % 60;
    return (minute, remainSeconds);
  }

  static String durationToString(Duration d) => d.toString().split('.').first.padLeft(8, '0');
}
