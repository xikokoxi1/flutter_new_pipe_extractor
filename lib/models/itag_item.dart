part of 'models.dart';


enum AudioTrackType {
  @JsonValue('ORIGINAL')
  original,
  @JsonValue('DUBBED')
  dubbed,
  @JsonValue('DESCRIPTIVE')
  descriptive,
  @JsonValue('SECONDARY')
  secondary,
}

@JsonSerializable()
class ItagItem {
  final int id;
  final MediaFormat? format;
  @JsonKey(name: 'resolutionString')
  final String? resolution;
  final int fps;
  final int bitrate;
  final int width;
  final int height;
  final int initStart;
  final int initEnd;
  final int indexStart;
  final int indexEnd;
  final String quality;
  final String codec;
  final int targetDurationSec;
  final int approxDurationMs;
  final int contentLength;
  final String? audioTrackId;
  final String? audioTrackName;
  final AudioTrackType? audioTrackType;

  ItagItem({
    required this.id,
    this.format,
    this.resolution,
    this.fps = 30,
    required this.bitrate,
    required this.width,
    required this.height,
    required this.initStart,
    required this.initEnd,
    required this.indexStart,
    required this.indexEnd,
    required this.quality,
    required this.codec,
    required this.targetDurationSec,
    required this.approxDurationMs,
    required this.contentLength,
    this.audioTrackId,
    this.audioTrackName,
    this.audioTrackType,
  });

  factory ItagItem.fromJson(Map<String, dynamic> json) => _$ItagItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItagItemToJson(this);
}
