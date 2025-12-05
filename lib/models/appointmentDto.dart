import 'package:flutter/material.dart';

class AppointmentDTO{
  String id = '';
  String title = '';
  String resident = '';
  DateTime date = DateTime.now();
  TimeOfDay time = TimeOfDay.now();
  Duration duration = Duration();
  String location = '';
  String priority = '';
}