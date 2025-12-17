import 'package:flutter/material.dart';
import 'package:zorgwijzer_amarant_s4/models/appointmentDto.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:zorgwijzer_amarant_s4/services/appointmentService.dart';

class AppointmentViewModel extends ChangeNotifier {
  final AppointmentService appointmentService;

  AppointmentViewModel(this.appointmentService);

  List<AppointmentDTO> _appointments = [];

  List<AppointmentDTO> get appointments => _appointments;

  List<AppointmentDTO> getAppointmentsForDay(DateTime date) {
    final appointmentsForDay = _appointments
        .where((appointment) => isSameDay(appointment.dateTime, date))
        .toList();
    appointmentsForDay.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    return appointmentsForDay;
  }

  List<AppointmentDTO> loadSampleAppointments() {
    return _appointments = [
      AppointmentDTO(
        id: "ahjs",
        activity: "Doktersafspraak",
        client: "",
        isCompleted: false,
        duration: Duration(minutes: 30),
        dateTime: DateTime(2025, 12, 7, 9, 0),
        priority: "",
        location: "",
      ),
    ];
  }

  Future<void> getAllAppointments() async {
    _appointments = await appointmentService.getAllAppointments();
    notifyListeners();
  }
}
