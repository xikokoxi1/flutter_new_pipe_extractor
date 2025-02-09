import 'dart:convert';

import 'package:flutter_new_pipe_extractor/models/models.dart';
import 'package:flutter_new_pipe_extractor/pigeon/newpipe_api.g.dart' as api;

export 'package:flutter_new_pipe_extractor/pigeon/newpipe_api.g.dart'
    hide NewPipeExtractor;

abstract class NewPipeExtractor {
  static final _hostApi = api.NewPipeExtractor();

  static Future<void> init() {
    return _hostApi.init();
  }

  static Future<VideoInfo> getVideoInfo(String videoId) async {
    final rawJson = await _hostApi.getVideoInfo(videoId);
    final json = jsonDecode(rawJson);

    return VideoInfo.fromJson(json);
  }

  static Future<List<SearchResultItem>> search(
    String query, {
    List<String>? contentFilters,
    String? sortFilter,
  }) async {
    final json = jsonDecode(await _hostApi.search(
      query,
      contentFilters: contentFilters,
      sortFilter: sortFilter,
    )) as List;

    return json
        .map((e) => switch (e["infoType"]) {
              "STREAM" => VideoSearchResultItem.fromJson(e),
              "PLAYLIST" => PlaylistSearchResultItem.fromJson(e),
              "CHANNEL" => ChannelSearchResultItem.fromJson(e),
              _ => throw Exception("Unknown type: ${e["type"]}"),
            })
        .toList();
  }
}
