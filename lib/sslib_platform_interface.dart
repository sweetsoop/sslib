import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'sslib_method_channel.dart';

abstract class SSlibPlatform extends PlatformInterface {
  /// Constructs a SslibPlatform.
  SSlibPlatform() : super(token: _token);

  static final Object _token = Object();

  static SSlibPlatform _instance = MethodChannelSSlib();

  /// The default instance of [SslibPlatform] to use.
  ///
  /// Defaults to [MethodChannelSslib].
  static SSlibPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SSlibPlatform] when
  /// they register themselves.
  static set instance(SSlibPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
