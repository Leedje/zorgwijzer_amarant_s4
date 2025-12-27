import 'package:json_annotation/json_annotation.dart';

part 'reminderDto.g.dart';

@JsonSerializable()
class ReminderDTO {
  String id;
  String title;
  String description;
  String activity;
  DateTime timeCreated;
  DateTime appointmentTime;

  ReminderDTO({
  required this.id,
   required this.title,
   required this.description,
   required this.activity,
   required this.timeCreated,
   required this.appointmentTime
  });

  factory ReminderDTO.fromJson(Map<String, dynamic> json) => _$ReminderDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ReminderDTOToJson(this);

}