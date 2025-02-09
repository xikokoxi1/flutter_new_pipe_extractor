import 'package:flutter_new_pipe_extractor/models/models.dart';
import 'package:flutter_new_pipe_extractor/pigeon/newpipe_api.g.dart' as api;
import 'package:flutter_new_pipe_extractor/utils/utils.dart';

export 'package:flutter_new_pipe_extractor/pigeon/newpipe_api.g.dart'
    hide NewPipeExtractor;

abstract class NewPipeExtractor {
  static final _hostApi = api.NewPipeExtractor();

  static Future<void> init() {
    return _hostApi.init();
  }

  static Future<VideoInfo> getVideoInfo(String videoId) async {
    final json = await _hostApi.getVideoInfo(videoId);

    return VideoInfo.fromJson(deepCastMap(json.data));
  }

  static Future<List<SearchResultItem>> search(
    String query, {
    List<String>? contentFilters,
    String? sortFilter,
  }) async {
    final json = await _hostApi.search(
      query,
      contentFilters: contentFilters,
      sortFilter: sortFilter,
    );

    return json
        .map((e) => switch (e.data["infoType"]) {
              "STREAM" => VideoSearchResultItem.fromJson(deepCastMap(e.data)),
              "PLAYLIST" =>
                PlaylistSearchResultItem.fromJson(deepCastMap(e.data)),
              "CHANNEL" =>
                ChannelSearchResultItem.fromJson(deepCastMap(e.data)),
              _ => throw Exception("Unknown type: ${e.data["type"]}"),
            })
        .toList();
  }
}
