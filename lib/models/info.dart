part of 'models.dart';

abstract class Info {
  final String id;
  final String url;
  final String originalUrl;
  final String name;

  Info({
    required this.id,
    required this.url,
    required this.originalUrl,
    required this.name,
  });
}

@JsonSerializable()
class InfoDescription {
  final String? content;
  final int type;

  InfoDescription({
    required this.type,
    this.content,
  });

  factory InfoDescription.fromJson(Map<String, dynamic> json) =>
      _$InfoDescriptionFromJson(json);

  Map<String, dynamic> toJson() => _$InfoDescriptionToJson(this);
}
