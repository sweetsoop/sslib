class DateTimeUtil {
  static (int, int) getMinSecFromSeconds(int seconds) {
    final minute = seconds ~/ 60;
    final remainSeconds = seconds % 60;
    return (minute, remainSeconds);
  }
}
