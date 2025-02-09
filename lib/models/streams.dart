part of 'models.dart';

enum DeliveryMethod {
  @JsonValue('PROGRESSIVE_HTTP')
  progressiveHttp,
  @JsonValue('DASH')
  dash,
  @JsonValue('HLS')
  hls,
  @JsonValue('SS')
  ss,
  @JsonValue('TORRENT')
  torrent,
}

abstract class YoutubeStream {
  final String id;
  final MediaFormat? mediaFormat;
  final String content;
  final bool isUrl;
  final DeliveryMethod deliveryMethod;
  final String? manifestUrl;

  YoutubeStream({
    required this.id,
    required this.mediaFormat,
    required this.content,
    required this.isUrl,
    required this.deliveryMethod,
    this.manifestUrl,
  });
}

@JsonSerializable()
class AudioStream extends YoutubeStream {
  final int itag;
  final int bitrate;
  final int initStart;
  final int initEnd;
  final int indexStart;
  final int indexEnd;
  final String quality;
  final String codec;

  // Fields about the audio track id/name

  final String? audioTrackId;
  final String? audioTrackName;

  final AudioTrackType? audioTrackType;
  final ItagItem? itagItem;

  AudioStream({
    required super.id,
    required super.mediaFormat,
    required super.content,
    required super.isUrl,
    required super.deliveryMethod,
    required this.bitrate,
    required this.initStart,
    required this.initEnd,
    required this.indexStart,
    required this.indexEnd,
    required this.quality,
    required this.codec,
    required this.itag,
    super.manifestUrl,
    this.audioTrackId,
    this.audioTrackName,
    this.audioTrackType,
    this.itagItem,
  });

  factory AudioStream.fromJson(Map<String, dynamic> json) => _$AudioStreamFromJson(json);
  Map<String, dynamic> toJson() => _$AudioStreamToJson(this);
}

@JsonSerializable()
class VideoStream extends YoutubeStream {
  final String resolution;

  final bool isVideoOnly;

  // Fields for DASH
  final int itag;
  final int bitrate;
  final int initStart;
  final int initEnd;
  final int indexStart;
  final int indexEnd;
  final int width;
  final int height;
  final int fps;
  final String quality;
  final String codec;
  final ItagItem? itagItem;

  VideoStream({
    required super.id,
    required super.mediaFormat,
    required super.content,
    required super.isUrl,
    required super.deliveryMethod,
    required this.resolution,
    required this.isVideoOnly,
    required this.itag,
    required this.bitrate,
    required this.initStart,
    required this.initEnd,
    required this.indexStart,
    required this.indexEnd,
    required this.width,
    required this.height,
    required this.fps,
    required this.quality,
    required this.codec,
    super.manifestUrl,
    this.itagItem,
  });

  factory VideoStream.fromJson(Map<String, dynamic> json) => _$VideoStreamFromJson(json);

  Map<String, dynamic> toJson() => _$VideoStreamToJson(this);
}