part of 'models.dart';

@JsonSerializable()
class Thumbnail {
  final String url;
  final int width;
  final int height;

  Thumbnail({required this.url, required this.width, required this.height});

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);
}

@JsonSerializable()
class Engagement {
  final int likes;
  final int dislikes;
  final int viewCount;

  Engagement({
    required this.likes,
    required this.dislikes,
    required this.viewCount,
  });

  factory Engagement.fromJson(Map<String, dynamic> json) =>
      _$EngagementFromJson(json);

  Map<String, dynamic> toJson() => _$EngagementToJson(this);
}

@JsonSerializable()
class VideoInfo extends Info {
  final StreamInfoType streamType;
  final List<Thumbnail> thumbnails;
  final String textualUploadDate;
  final DateWrapper uploadDate;
  final int duration;
  final int ageLimit;
  final InfoDescription description;

  final int viewCount;
  final int likeCount;
  final int dislikeCount;

  final String uploaderName;
  final String uploaderUrl;
  final List<Thumbnail> uploaderAvatars;
  final bool uploaderVerified;
  final int uploaderSubscriberCount;

  final String subChannelName;
  final String subChannelUrl;
  final List<Thumbnail> subChannelAvatars;

  final List<VideoStream> videoStreams;
  final List<AudioStream> audioStreams;
  final List<VideoStream> videoOnlyStreams;

  final String dashMpdUrl;
  final String hlsUrl;

  // final List<InfoItem> relatedItems;

  final int startPosition;

  // final List<SubtitlesStream> subtitles = List.of();

  // final String host = "";
  // final StreamExtractor.Privacy privacy;
  final String category;
  final String licence;
  final String supportInfo;

  // final Locale language = null;
  final List<String> tags;

  // final List<StreamSegment> streamSegments = List.of();
  // final List<MetaInfo> metaInfo = List.of();
  final bool shortFormContent;

  VideoInfo({
    required super.id,
    required super.url,
    required super.originalUrl,
    required super.name,
    required this.streamType,
    required this.thumbnails,
    required this.textualUploadDate,
    required this.uploadDate,
    required this.duration,
    required this.ageLimit,
    required this.description,
    required this.viewCount,
    required this.likeCount,
    required this.dislikeCount,
    required this.uploaderName,
    required this.uploaderUrl,
    required this.uploaderAvatars,
    required this.uploaderVerified,
    required this.uploaderSubscriberCount,
    required this.subChannelName,
    required this.subChannelUrl,
    required this.subChannelAvatars,
    required this.videoStreams,
    required this.audioStreams,
    required this.videoOnlyStreams,
    required this.dashMpdUrl,
    required this.hlsUrl,
    required this.startPosition,
    required this.category,
    required this.licence,
    required this.supportInfo,
    required this.tags,
    required this.shortFormContent,
  });

  factory VideoInfo.fromJson(Map<String, dynamic> json) =>
      _$VideoInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VideoInfoToJson(this);
}
