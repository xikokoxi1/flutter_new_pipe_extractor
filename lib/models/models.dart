library;

import 'package:json_annotation/json_annotation.dart';
part 'models.g.dart';

part 'date_wrapper.dart';
part 'info.dart';
part 'itag_item.dart';
part 'media_format.dart';
part 'search.dart';
part 'streams.dart';
part 'video.dart';

DateTime _dateTimeFromString(String d) => DateTime.parse(d);
String _dateTimeToString(DateTime d) => d.toIso8601String();

DateTime _dateTimeFromInt(int d) => DateTime.fromMillisecondsSinceEpoch(d);
int _dateTimeToInt(DateTime d) => d.millisecondsSinceEpoch;

DateTime? _dateTimeFromIntNullable(int? d) => d == null ? null: DateTime.fromMillisecondsSinceEpoch(d);
int? _dateTimeToIntNullable(DateTime? d) => d?.millisecondsSinceEpoch;

