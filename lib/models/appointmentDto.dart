import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'appointmentDto.g.dart';

@JsonSerializable()
class AppointmentDTO {
  String id;
  String activity;
  String client;
  DateTime dateTime;
  Duration duration;
  String location;
  String priority;
  bool isCompleted;

  AppointmentDTO({
    required this.id,
    required this.activity,
    required this.client,
    required this.dateTime,
    required this.duration,
    required this.location,
    required this.priority,
    required this.isCompleted,
  });
  
  factory AppointmentDTO.fromJson(Map<String, dynamic> json) {
    final dto = _$AppointmentDTOFromJson(json);

    if (json['duration'] != null){
      dto.duration = Duration(minutes: json['duration'] as int);
    }

     if (json['dateTime'] != null) {
      dto.dateTime = DateTime.parse(json['dateTime'] as String);
    }

    return dto;
  }

   @override
  Map<String, dynamic> toJson() {
    final dto = _$AppointmentDTOToJson(this);

    if (dto['id'] == '') {
      dto.remove('id');
    }

    return dto;
  }


}
