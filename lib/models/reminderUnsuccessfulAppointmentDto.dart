import 'package:json_annotation/json_annotation.dart';

part 'reminderUnsuccessfulAppointmentDto.g.dart';

@JsonSerializable()
class ReminderUnsuccessfulAppointmentDTO {

  String id;
  String activity;
  String caller;
  String category;
  String client;
  DateTime dateTime;
  int duration;
  String instruction;
  bool completed;
  String location;
  int staff;
  String phoneNumber;
  String urgency;
  String priority;

  ReminderUnsuccessfulAppointmentDTO({
    required this.id,
    required this.activity,
    required this.caller,
    required this.category,
    required this.client,
    required this.dateTime,
    required this.duration,
    required this.instruction,
    required this.completed,
    required this.location,
    required this.staff,
    required this.phoneNumber,
    required this.urgency,
    required this.priority,
  });

  factory ReminderUnsuccessfulAppointmentDTO.fromJson(Map<String, dynamic> json) =>
      _$ReminderUnsuccessfulAppointmentDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ReminderUnsuccessfulAppointmentDTOToJson(this);
}
