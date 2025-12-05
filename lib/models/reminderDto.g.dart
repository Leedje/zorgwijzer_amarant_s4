// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminderDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReminderDTO _$ReminderDTOFromJson(Map<String, dynamic> json) => ReminderDTO(
  id: json['id'] as String? ?? '',
  timeSent: json['timeSent'] == null
      ? null
      : DateTime.parse(json['timeSent'] as String),
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  appointmentId: json['appointmentId'] as String? ?? '',
  appointmentTime: json['appointmentTime'] == null
      ? null
      : DateTime.parse(json['appointmentTime'] as String),
);

Map<String, dynamic> _$ReminderDTOToJson(ReminderDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'timeSent': instance.timeSent.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'appointmentId': instance.appointmentId,
      'appointmentTime': instance.appointmentTime.toIso8601String(),
    };
