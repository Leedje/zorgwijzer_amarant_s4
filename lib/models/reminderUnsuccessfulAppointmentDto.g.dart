// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminderUnsuccessfulAppointmentDto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReminderUnsuccessfulAppointmentDTO _$ReminderUnsuccessfulAppointmentDTOFromJson(
  Map<String, dynamic> json,
) => ReminderUnsuccessfulAppointmentDTO(
  id: json['id'] as String,
  activity: json['activity'] as String,
  caller: json['caller'] as String,
  category: json['category'] as String,
  client: json['client'] as String,
  dateTime: DateTime.parse(json['dateTime'] as String),
  duration: (json['duration'] as num).toInt(),
  instruction: json['instruction'] as String,
  completed: json['completed'] as bool,
  location: json['location'] as String,
  staff: (json['staff'] as num).toInt(),
  phoneNumber: json['phoneNumber'] as String,
  urgency: json['urgency'] as String,
  priority: json['priority'] as String,
);

Map<String, dynamic> _$ReminderUnsuccessfulAppointmentDTOToJson(
  ReminderUnsuccessfulAppointmentDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'activity': instance.activity,
  'caller': instance.caller,
  'category': instance.category,
  'client': instance.client,
  'dateTime': instance.dateTime.toIso8601String(),
  'duration': instance.duration,
  'instruction': instance.instruction,
  'completed': instance.completed,
  'location': instance.location,
  'staff': instance.staff,
  'phoneNumber': instance.phoneNumber,
  'urgency': instance.urgency,
  'priority': instance.priority,
};
