
import 'flutter_new_pipe_extractor_platform_interface.dart';

class FlutterNewPipeExtractor {
  Future<String?> getPlatformVersion() {
    return FlutterNewPipeExtractorPlatform.instance.getPlatformVersion();
  }
}
