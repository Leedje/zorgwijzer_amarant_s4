import 'package:json_annotation/json_annotation.dart';

part 'reminderDto.g.dart';

@JsonSerializable()
class ReminderDTO {
  String id = '';
  DateTime timeSent = DateTime.now();
  String title = '';
  String description = '';
  String appointmentId = '';
  DateTime appointmentTime = DateTime.now();

  ReminderDTO({
      String id = '',
  DateTime? timeSent,
  String title = '',
  String description = '',
  String appointmentId = '',
  DateTime? appointmentTime
  });

  factory ReminderDTO.fromJson(Map<String, dynamic> json) => _$ReminderDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ReminderDTOToJson(this);

}