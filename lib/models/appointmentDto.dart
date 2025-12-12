import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'appointmentDto.g.dart';

@JsonSerializable()
class AppointmentDTO {
  String id = '';
  String title = '';
  String resident = '';
  DateTime date = DateTime.now();
  DateTime time = DateTime.now();
  Duration duration = Duration();
  String location = '';
  String priority = ''; //dit moet zwaarte worden
  //DateTime dateTime = DateTime.now();
  // i need to extract the date and time from the datetime
  // however, the other data isn't being displayed

  AppointmentDTO({
    String id = '',
    String title = '',
    String resident = '',
    DateTime? date,
    DateTime? time,
    Duration? duration,
    String location = '',
    String priority = '',
  });

  
  factory AppointmentDTO.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentDTOToJson(this);

}
