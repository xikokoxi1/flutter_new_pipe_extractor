import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_new_pipe_extractor_method_channel.dart';

abstract class FlutterNewPipeExtractorPlatform extends PlatformInterface {
  /// Constructs a FlutterNewPipeExtractorPlatform.
  FlutterNewPipeExtractorPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterNewPipeExtractorPlatform _instance = MethodChannelFlutterNewPipeExtractor();

  /// The default instance of [FlutterNewPipeExtractorPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterNewPipeExtractor].
  static FlutterNewPipeExtractorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterNewPipeExtractorPlatform] when
  /// they register themselves.
  static set instance(FlutterNewPipeExtractorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
