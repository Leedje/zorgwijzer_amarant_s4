// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminderDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReminderDTO _$ReminderDTOFromJson(Map<String, dynamic> json) => ReminderDTO(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  activity: json['activity'] as String,
  timeCreated: DateTime.parse(json['timeCreated'] as String),
  appointmentTime: DateTime.parse(json['appointmentTime'] as String),
);

Map<String, dynamic> _$ReminderDTOToJson(ReminderDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'activity': instance.activity,
      'timeCreated': instance.timeCreated.toIso8601String(),
      'appointmentTime': instance.appointmentTime.toIso8601String(),
    };
