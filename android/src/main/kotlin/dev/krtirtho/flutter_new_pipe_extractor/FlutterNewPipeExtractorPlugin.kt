package dev.krtirtho.flutter_new_pipe_extractor

import androidx.annotation.NonNull
import dev.krtirtho.flutter_new_pipe_extractor.impl.NewPipeDartImpl
import dev.krtirtho.flutter_new_pipe_extractor.pigeon.NewPipeExtractor

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result


class FlutterNewPipeExtractorPlugin: FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private lateinit var channel : MethodChannel

  override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
    NewPipeExtractor.setUp(flutterPluginBinding.binaryMessenger, NewPipeDartImpl())
//    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "flutter_new_pipe_extractor")
//    channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(call: MethodCall, result: Result) {
//    if (call.method == "getPlatformVersion") {
//      result.success("Android ${android.os.Build.VERSION.RELEASE}")
//    } else {
//      result.notImplemented()
//    }
  }

  override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
//    channel.setMethodCallHandler(null)
  }
}
