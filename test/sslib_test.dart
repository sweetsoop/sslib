import 'package:flutter_test/flutter_test.dart';
import 'package:sslib/datetime/datetime_util.dart';
import 'package:sslib/sslib.dart';
import 'package:sslib/sslib_platform_interface.dart';
import 'package:sslib/sslib_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSslibPlatform with MockPlatformInterfaceMixin implements SSlibPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  test('초를 분과 초로 만들기', () {
    expect(DateTimeUtil.getMinSecFromSeconds(180), (3, 0));
  });
  /*
  final SSlibPlatform initialPlatform = SSlibPlatform.instance;

  test('$MethodChannelSSlib is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSSlib>());
  });

  test('getPlatformVersion', () async {
    SSlib sslibPlugin = SSlib();
    MockSslibPlatform fakePlatform = MockSslibPlatform();
    SSlibPlatform.instance = fakePlatform;

    expect(await sslibPlugin.getPlatformVersion(), '42');
  });
  */
}
