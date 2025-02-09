import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_new_pipe_extractor/flutter_new_pipe_extractor.dart';
import 'package:flutter_new_pipe_extractor/flutter_new_pipe_extractor_platform_interface.dart';
import 'package:flutter_new_pipe_extractor/flutter_new_pipe_extractor_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterNewPipeExtractorPlatform
    with MockPlatformInterfaceMixin
    implements FlutterNewPipeExtractorPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterNewPipeExtractorPlatform initialPlatform = FlutterNewPipeExtractorPlatform.instance;

  test('$MethodChannelFlutterNewPipeExtractor is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterNewPipeExtractor>());
  });

  test('getPlatformVersion', () async {
    FlutterNewPipeExtractor flutterNewPipeExtractorPlugin = FlutterNewPipeExtractor();
    MockFlutterNewPipeExtractorPlatform fakePlatform = MockFlutterNewPipeExtractorPlatform();
    FlutterNewPipeExtractorPlatform.instance = fakePlatform;

    expect(await flutterNewPipeExtractorPlugin.getPlatformVersion(), '42');
  });
}
