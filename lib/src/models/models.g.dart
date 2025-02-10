// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DateWrapper _$DateWrapperFromJson(Map<String, dynamic> json) => DateWrapper(
      isApproximation: json['isApproximation'] as bool,
      offsetDateTime: _dateTimeFromInt((json['offsetDateTime'] as num).toInt()),
    );

Map<String, dynamic> _$DateWrapperToJson(DateWrapper instance) =>
    <String, dynamic>{
      'isApproximation': instance.isApproximation,
      'offsetDateTime': _dateTimeToInt(instance.offsetDateTime),
    };

InfoDescription _$InfoDescriptionFromJson(Map<String, dynamic> json) =>
    InfoDescription(
      type: (json['type'] as num).toInt(),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$InfoDescriptionToJson(InfoDescription instance) =>
    <String, dynamic>{
      'content': instance.content,
      'type': instance.type,
    };

ItagItem _$ItagItemFromJson(Map<String, dynamic> json) => ItagItem(
      id: (json['id'] as num).toInt(),
      format: $enumDecodeNullable(_$MediaFormatEnumMap, json['format']),
      resolution: json['resolutionString'] as String?,
      fps: (json['fps'] as num?)?.toInt() ?? 30,
      bitrate: (json['bitrate'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      initStart: (json['initStart'] as num).toInt(),
      initEnd: (json['initEnd'] as num).toInt(),
      indexStart: (json['indexStart'] as num).toInt(),
      indexEnd: (json['indexEnd'] as num).toInt(),
      quality: json['quality'] as String,
      codec: json['codec'] as String,
      targetDurationSec: (json['targetDurationSec'] as num).toInt(),
      approxDurationMs: (json['approxDurationMs'] as num).toInt(),
      contentLength: (json['contentLength'] as num).toInt(),
      audioTrackId: json['audioTrackId'] as String?,
      audioTrackName: json['audioTrackName'] as String?,
      audioTrackType:
          $enumDecodeNullable(_$AudioTrackTypeEnumMap, json['audioTrackType']),
    );

Map<String, dynamic> _$ItagItemToJson(ItagItem instance) => <String, dynamic>{
      'id': instance.id,
      'format': _$MediaFormatEnumMap[instance.format],
      'resolutionString': instance.resolution,
      'fps': instance.fps,
      'bitrate': instance.bitrate,
      'width': instance.width,
      'height': instance.height,
      'initStart': instance.initStart,
      'initEnd': instance.initEnd,
      'indexStart': instance.indexStart,
      'indexEnd': instance.indexEnd,
      'quality': instance.quality,
      'codec': instance.codec,
      'targetDurationSec': instance.targetDurationSec,
      'approxDurationMs': instance.approxDurationMs,
      'contentLength': instance.contentLength,
      'audioTrackId': instance.audioTrackId,
      'audioTrackName': instance.audioTrackName,
      'audioTrackType': _$AudioTrackTypeEnumMap[instance.audioTrackType],
    };

const _$MediaFormatEnumMap = {
  MediaFormat.mpeg4: 'MPEG-4',
  MediaFormat.v3gpp: '3GPP',
  MediaFormat.webm: 'WebM',
  MediaFormat.m4a: 'm4a',
  MediaFormat.webma: 'WebM',
  MediaFormat.mp3: 'MP3',
  MediaFormat.mp2: 'MP2',
  MediaFormat.opus: 'opus',
  MediaFormat.ogg: 'ogg',
  MediaFormat.webmaOpus: 'WebM Opus',
  MediaFormat.aiff: 'AIFF',
  MediaFormat.aif: 'AIFF',
  MediaFormat.wav: 'WAV',
  MediaFormat.flac: 'FLAC',
  MediaFormat.alac: 'ALAC',
  MediaFormat.vtt: 'WebVTT',
  MediaFormat.ttml: 'Timed Text Markup Language',
  MediaFormat.transcript1: 'TranScript v1',
  MediaFormat.transcript2: 'TranScript v2',
  MediaFormat.transcript3: 'TranScript v3',
  MediaFormat.srt: 'SubRip file format',
};

const _$AudioTrackTypeEnumMap = {
  AudioTrackType.original: 'ORIGINAL',
  AudioTrackType.dubbed: 'DUBBED',
  AudioTrackType.descriptive: 'DESCRIPTIVE',
  AudioTrackType.secondary: 'SECONDARY',
};

VideoSearchResultItem _$VideoSearchResultItemFromJson(
        Map<String, dynamic> json) =>
    VideoSearchResultItem(
      streamType: $enumDecode(_$StreamInfoTypeEnumMap, json['streamType']),
      uploaderName: json['uploaderName'] as String,
      shortDescription: json['shortDescription'] as String?,
      uploadDate: json['uploadDate'] == null
          ? null
          : DateWrapper.fromJson(json['uploadDate'] as Map<String, dynamic>),
      viewCount: (json['viewCount'] as num).toInt(),
      duration: (json['duration'] as num).toInt(),
      uploaderUrl: json['uploaderUrl'] as String,
      uploaderAvatars: (json['uploaderAvatars'] as List<dynamic>)
          .map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      uploaderVerified: json['uploaderVerified'] as bool,
      shortFormContent: json['shortFormContent'] as bool,
      infoType: $enumDecode(_$SearchResultTypeEnumMap, json['infoType']),
      url: json['url'] as String,
      name: json['name'] as String,
      thumbnails: (json['thumbnails'] as List<dynamic>)
          .map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      textualUploadDate: json['textualUploadDate'] as String?,
    );

Map<String, dynamic> _$VideoSearchResultItemToJson(
        VideoSearchResultItem instance) =>
    <String, dynamic>{
      'infoType': _$SearchResultTypeEnumMap[instance.infoType]!,
      'url': instance.url,
      'name': instance.name,
      'thumbnails': instance.thumbnails,
      'streamType': _$StreamInfoTypeEnumMap[instance.streamType]!,
      'uploaderName': instance.uploaderName,
      'shortDescription': instance.shortDescription,
      'textualUploadDate': instance.textualUploadDate,
      'uploadDate': instance.uploadDate,
      'viewCount': instance.viewCount,
      'duration': instance.duration,
      'uploaderUrl': instance.uploaderUrl,
      'uploaderAvatars': instance.uploaderAvatars,
      'uploaderVerified': instance.uploaderVerified,
      'shortFormContent': instance.shortFormContent,
    };

const _$StreamInfoTypeEnumMap = {
  StreamInfoType.none: 'NONE',
  StreamInfoType.videoStream: 'VIDEO_STREAM',
  StreamInfoType.audioStream: 'AUDIO_STREAM',
  StreamInfoType.liveStream: 'LIVE_STREAM',
  StreamInfoType.audioLiveStream: 'AUDIO_LIVE_STREAM',
  StreamInfoType.postLiveStream: 'POST_LIVE_STREAM',
  StreamInfoType.postLiveAudioStream: 'POST_LIVE_AUDIO_STREAM',
};

const _$SearchResultTypeEnumMap = {
  SearchResultType.video: 'STREAM',
  SearchResultType.channel: 'CHANNEL',
  SearchResultType.playlist: 'PLAYLIST',
};

ChannelSearchResultItem _$ChannelSearchResultItemFromJson(
        Map<String, dynamic> json) =>
    ChannelSearchResultItem(
      subscriberCount: (json['subscriberCount'] as num).toInt(),
      streamCount: (json['streamCount'] as num).toInt(),
      verified: json['verified'] as bool,
      infoType: $enumDecode(_$SearchResultTypeEnumMap, json['infoType']),
      url: json['url'] as String,
      name: json['name'] as String,
      thumbnails: (json['thumbnails'] as List<dynamic>)
          .map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : InfoDescription.fromJson(
              json['description'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChannelSearchResultItemToJson(
        ChannelSearchResultItem instance) =>
    <String, dynamic>{
      'infoType': _$SearchResultTypeEnumMap[instance.infoType]!,
      'url': instance.url,
      'name': instance.name,
      'thumbnails': instance.thumbnails,
      'description': instance.description,
      'subscriberCount': instance.subscriberCount,
      'streamCount': instance.streamCount,
      'verified': instance.verified,
    };

PlaylistSearchResultItem _$PlaylistSearchResultItemFromJson(
        Map<String, dynamic> json) =>
    PlaylistSearchResultItem(
      uploaderName: json['uploaderName'] as String,
      uploaderVerified: json['uploaderVerified'] as bool,
      playlistType:
          $enumDecode(_$PlaylistInfoTypeEnumMap, json['playlistType']),
      infoType: $enumDecode(_$SearchResultTypeEnumMap, json['infoType']),
      url: json['url'] as String,
      name: json['name'] as String,
      thumbnails: (json['thumbnails'] as List<dynamic>)
          .map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] == null
          ? null
          : InfoDescription.fromJson(
              json['description'] as Map<String, dynamic>),
      videoCount: (json['videoCount'] as num?)?.toInt(),
      uploaderUrl: json['uploaderUrl'] as String?,
    );

Map<String, dynamic> _$PlaylistSearchResultItemToJson(
        PlaylistSearchResultItem instance) =>
    <String, dynamic>{
      'infoType': _$SearchResultTypeEnumMap[instance.infoType]!,
      'url': instance.url,
      'name': instance.name,
      'thumbnails': instance.thumbnails,
      'uploaderName': instance.uploaderName,
      'uploaderUrl': instance.uploaderUrl,
      'uploaderVerified': instance.uploaderVerified,
      'videoCount': instance.videoCount,
      'description': instance.description,
      'playlistType': _$PlaylistInfoTypeEnumMap[instance.playlistType]!,
    };

const _$PlaylistInfoTypeEnumMap = {
  PlaylistInfoType.normal: 'NORMAL',
  PlaylistInfoType.mixStream: 'MIX_STREAM',
  PlaylistInfoType.mixMusic: 'MIX_MUSIC',
  PlaylistInfoType.mixChannel: 'MIX_CHANNEL',
  PlaylistInfoType.mixGenre: 'MIX_GENRE',
};

AudioStream _$AudioStreamFromJson(Map<String, dynamic> json) => AudioStream(
      id: json['id'] as String,
      mediaFormat:
          $enumDecodeNullable(_$MediaFormatEnumMap, json['mediaFormat']),
      content: json['content'] as String,
      isUrl: json['isUrl'] as bool,
      deliveryMethod:
          $enumDecode(_$DeliveryMethodEnumMap, json['deliveryMethod']),
      bitrate: (json['bitrate'] as num).toInt(),
      initStart: (json['initStart'] as num).toInt(),
      initEnd: (json['initEnd'] as num).toInt(),
      indexStart: (json['indexStart'] as num).toInt(),
      indexEnd: (json['indexEnd'] as num).toInt(),
      quality: json['quality'] as String,
      codec: json['codec'] as String,
      itag: (json['itag'] as num).toInt(),
      manifestUrl: json['manifestUrl'] as String?,
      audioTrackId: json['audioTrackId'] as String?,
      audioTrackName: json['audioTrackName'] as String?,
      audioTrackType:
          $enumDecodeNullable(_$AudioTrackTypeEnumMap, json['audioTrackType']),
      itagItem: json['itagItem'] == null
          ? null
          : ItagItem.fromJson(json['itagItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AudioStreamToJson(AudioStream instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mediaFormat': _$MediaFormatEnumMap[instance.mediaFormat],
      'content': instance.content,
      'isUrl': instance.isUrl,
      'deliveryMethod': _$DeliveryMethodEnumMap[instance.deliveryMethod]!,
      'manifestUrl': instance.manifestUrl,
      'itag': instance.itag,
      'bitrate': instance.bitrate,
      'initStart': instance.initStart,
      'initEnd': instance.initEnd,
      'indexStart': instance.indexStart,
      'indexEnd': instance.indexEnd,
      'quality': instance.quality,
      'codec': instance.codec,
      'audioTrackId': instance.audioTrackId,
      'audioTrackName': instance.audioTrackName,
      'audioTrackType': _$AudioTrackTypeEnumMap[instance.audioTrackType],
      'itagItem': instance.itagItem,
    };

const _$DeliveryMethodEnumMap = {
  DeliveryMethod.progressiveHttp: 'PROGRESSIVE_HTTP',
  DeliveryMethod.dash: 'DASH',
  DeliveryMethod.hls: 'HLS',
  DeliveryMethod.ss: 'SS',
  DeliveryMethod.torrent: 'TORRENT',
};

VideoStream _$VideoStreamFromJson(Map<String, dynamic> json) => VideoStream(
      id: json['id'] as String,
      mediaFormat:
          $enumDecodeNullable(_$MediaFormatEnumMap, json['mediaFormat']),
      content: json['content'] as String,
      isUrl: json['isUrl'] as bool,
      deliveryMethod:
          $enumDecode(_$DeliveryMethodEnumMap, json['deliveryMethod']),
      resolution: json['resolution'] as String,
      isVideoOnly: json['isVideoOnly'] as bool,
      itag: (json['itag'] as num).toInt(),
      bitrate: (json['bitrate'] as num).toInt(),
      initStart: (json['initStart'] as num).toInt(),
      initEnd: (json['initEnd'] as num).toInt(),
      indexStart: (json['indexStart'] as num).toInt(),
      indexEnd: (json['indexEnd'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      fps: (json['fps'] as num).toInt(),
      quality: json['quality'] as String,
      codec: json['codec'] as String,
      manifestUrl: json['manifestUrl'] as String?,
      itagItem: json['itagItem'] == null
          ? null
          : ItagItem.fromJson(json['itagItem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VideoStreamToJson(VideoStream instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mediaFormat': _$MediaFormatEnumMap[instance.mediaFormat],
      'content': instance.content,
      'isUrl': instance.isUrl,
      'deliveryMethod': _$DeliveryMethodEnumMap[instance.deliveryMethod]!,
      'manifestUrl': instance.manifestUrl,
      'resolution': instance.resolution,
      'isVideoOnly': instance.isVideoOnly,
      'itag': instance.itag,
      'bitrate': instance.bitrate,
      'initStart': instance.initStart,
      'initEnd': instance.initEnd,
      'indexStart': instance.indexStart,
      'indexEnd': instance.indexEnd,
      'width': instance.width,
      'height': instance.height,
      'fps': instance.fps,
      'quality': instance.quality,
      'codec': instance.codec,
      'itagItem': instance.itagItem,
    };

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) => Thumbnail(
      url: json['url'] as String,
      width: (json['width'] as num).toInt(),
      height: (json['height'] as num).toInt(),
    );

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };

Engagement _$EngagementFromJson(Map<String, dynamic> json) => Engagement(
      likes: (json['likes'] as num).toInt(),
      dislikes: (json['dislikes'] as num).toInt(),
      viewCount: (json['viewCount'] as num).toInt(),
    );

Map<String, dynamic> _$EngagementToJson(Engagement instance) =>
    <String, dynamic>{
      'likes': instance.likes,
      'dislikes': instance.dislikes,
      'viewCount': instance.viewCount,
    };

VideoInfo _$VideoInfoFromJson(Map<String, dynamic> json) => VideoInfo(
      id: json['id'] as String,
      url: json['url'] as String,
      originalUrl: json['originalUrl'] as String,
      name: json['name'] as String,
      streamType: $enumDecode(_$StreamInfoTypeEnumMap, json['streamType']),
      thumbnails: (json['thumbnails'] as List<dynamic>)
          .map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      textualUploadDate: json['textualUploadDate'] as String,
      uploadDate:
          DateWrapper.fromJson(json['uploadDate'] as Map<String, dynamic>),
      duration: (json['duration'] as num).toInt(),
      ageLimit: (json['ageLimit'] as num).toInt(),
      description:
          InfoDescription.fromJson(json['description'] as Map<String, dynamic>),
      viewCount: (json['viewCount'] as num).toInt(),
      likeCount: (json['likeCount'] as num).toInt(),
      dislikeCount: (json['dislikeCount'] as num).toInt(),
      uploaderName: json['uploaderName'] as String,
      uploaderUrl: json['uploaderUrl'] as String,
      uploaderAvatars: (json['uploaderAvatars'] as List<dynamic>)
          .map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      uploaderVerified: json['uploaderVerified'] as bool,
      uploaderSubscriberCount: (json['uploaderSubscriberCount'] as num).toInt(),
      subChannelName: json['subChannelName'] as String,
      subChannelUrl: json['subChannelUrl'] as String,
      subChannelAvatars: (json['subChannelAvatars'] as List<dynamic>)
          .map((e) => Thumbnail.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoStreams: (json['videoStreams'] as List<dynamic>)
          .map((e) => VideoStream.fromJson(e as Map<String, dynamic>))
          .toList(),
      audioStreams: (json['audioStreams'] as List<dynamic>)
          .map((e) => AudioStream.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoOnlyStreams: (json['videoOnlyStreams'] as List<dynamic>)
          .map((e) => VideoStream.fromJson(e as Map<String, dynamic>))
          .toList(),
      dashMpdUrl: json['dashMpdUrl'] as String,
      hlsUrl: json['hlsUrl'] as String,
      startPosition: (json['startPosition'] as num).toInt(),
      category: json['category'] as String,
      licence: json['licence'] as String,
      supportInfo: json['supportInfo'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      shortFormContent: json['shortFormContent'] as bool,
    );

Map<String, dynamic> _$VideoInfoToJson(VideoInfo instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'originalUrl': instance.originalUrl,
      'name': instance.name,
      'streamType': _$StreamInfoTypeEnumMap[instance.streamType]!,
      'thumbnails': instance.thumbnails,
      'textualUploadDate': instance.textualUploadDate,
      'uploadDate': instance.uploadDate,
      'duration': instance.duration,
      'ageLimit': instance.ageLimit,
      'description': instance.description,
      'viewCount': instance.viewCount,
      'likeCount': instance.likeCount,
      'dislikeCount': instance.dislikeCount,
      'uploaderName': instance.uploaderName,
      'uploaderUrl': instance.uploaderUrl,
      'uploaderAvatars': instance.uploaderAvatars,
      'uploaderVerified': instance.uploaderVerified,
      'uploaderSubscriberCount': instance.uploaderSubscriberCount,
      'subChannelName': instance.subChannelName,
      'subChannelUrl': instance.subChannelUrl,
      'subChannelAvatars': instance.subChannelAvatars,
      'videoStreams': instance.videoStreams,
      'audioStreams': instance.audioStreams,
      'videoOnlyStreams': instance.videoOnlyStreams,
      'dashMpdUrl': instance.dashMpdUrl,
      'hlsUrl': instance.hlsUrl,
      'startPosition': instance.startPosition,
      'category': instance.category,
      'licence': instance.licence,
      'supportInfo': instance.supportInfo,
      'tags': instance.tags,
      'shortFormContent': instance.shortFormContent,
    };
