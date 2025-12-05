// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointmentDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentDTO _$AppointmentDTOFromJson(
  Map<String, dynamic> json,
) => AppointmentDTO(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  resident: json['resident'] as String? ?? '',
  date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  time: json['time'] == null ? null : DateTime.parse(json['time'] as String),
  duration: json['duration'] == null
      ? null
      : Duration(microseconds: (json['duration'] as num).toInt()),
  location: json['location'] as String? ?? '',
  priority: json['priority'] as String? ?? '',
);

Map<String, dynamic> _$AppointmentDTOToJson(AppointmentDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'resident': instance.resident,
      'date': instance.date.toIso8601String(),
      'time': instance.time.toIso8601String(),
      'duration': instance.duration.inMicroseconds,
      'location': instance.location,
      'priority': instance.priority,
    };
