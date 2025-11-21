import 'package:zorgwijzer_amarant_s4/models/appointmentDto.dart';

class WeekPlanningDTO {
  String id = '';
  DateTime weekStart = DateTime.now();
  DateTime weekEnd = DateTime.now();
  List<AppointmentDTO> appointments = [];
}