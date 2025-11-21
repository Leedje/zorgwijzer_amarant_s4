import 'package:flutter/material.dart';

class AppointmentDTO{
  String id = '';
  String title = '';
  String resident = '';
  DateTime date = DateTime.now();
  DateTimeRange timeRange = DateTimeRange(start: DateTime.now(), end: DateTime.now());
  Duration duration = Duration();
  String location = '';
  String note = '';
}