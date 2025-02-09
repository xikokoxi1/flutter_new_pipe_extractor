import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_new_pipe_extractor_platform_interface.dart';

/// An implementation of [FlutterNewPipeExtractorPlatform] that uses method channels.
class MethodChannelFlutterNewPipeExtractor extends FlutterNewPipeExtractorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_new_pipe_extractor');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
