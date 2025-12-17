// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointmentDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentDTO _$AppointmentDTOFromJson(Map<String, dynamic> json) =>
    AppointmentDTO(
      id: json['id'] as String,
      activity: json['activity'] as String,
      client: json['client'] as String,
      dateTime: DateTime.parse(json['dateTime'] as String),
      duration: Duration(microseconds: (json['duration'] as num).toInt()),
      location: json['location'] as String,
      priority: json['priority'] as String,
      isCompleted: json['isCompleted'] as bool,
    );

Map<String, dynamic> _$AppointmentDTOToJson(AppointmentDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'activity': instance.activity,
      'client': instance.client,
      'dateTime': instance.dateTime.toIso8601String(),
      'duration': instance.duration.inMicroseconds,
      'location': instance.location,
      'priority': instance.priority,
      'isCompleted': instance.isCompleted,
    };
