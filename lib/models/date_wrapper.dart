part of 'models.dart';

@JsonSerializable()
class DateWrapper {
  final bool isApproximation;
  @JsonKey(fromJson: _dateTimeFromInt, toJson: _dateTimeToInt)
  final DateTime offsetDateTime;

  DateWrapper({
    required this.isApproximation,
    required this.offsetDateTime,
  });

  factory DateWrapper.fromJson(Map<String, dynamic> json) => _$DateWrapperFromJson(json);
  Map<String, dynamic> toJson() => _$DateWrapperToJson(this);
}