import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'sslib_platform_interface.dart';

/// An implementation of [SSlibPlatform] that uses method channels.
class MethodChannelSSlib extends SSlibPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('sslib');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
