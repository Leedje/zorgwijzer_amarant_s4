import 'package:flutter/material.dart';
import 'package:zorgwijzer_amarant_s4/models/appointmentDto.dart';
import 'package:table_calendar/table_calendar.dart';

class AppointmentViewModel extends ChangeNotifier {
  final List<AppointmentDTO> _appointments = [
    AppointmentDTO()
      ..id = "1"
      ..title = "Doktersafspraak"
      ..resident = "Bram Jansen"
      ..date = DateTime(2025, 12, 7)
      ..time = TimeOfDay(hour: 9, minute: 0)
      ..duration = Duration(minutes: 30)
      ..location = "Amarant Kliniek"
      ..priority = "Hoog",

    AppointmentDTO()
      ..id = "2"
      ..title = "Medicatiecontrole"
      ..resident = "Sophie de Vries"
      ..date = DateTime(2025, 12, 7)
      ..time = TimeOfDay(hour: 11, minute: 0)
      ..duration = Duration(minutes: 20)
      ..location = "Apotheek Tilburg"
      ..priority = "Medium",

    AppointmentDTO()
      ..id = "3"
      ..title = "Wandeling in het park"
      ..resident = "Jan Peters"
      ..date = DateTime(2025, 12, 7)
      ..time = TimeOfDay(hour: 14, minute: 30)
      ..duration = Duration(minutes: 45)
      ..location = "Spoorpark"
      ..priority = "Laag",

    AppointmentDTO()
      ..id = "4"
      ..title = "Telefonisch overleg huisarts"
      ..resident = "Maria van Dijk"
      ..date = DateTime(2025, 12, 5)
      ..time = TimeOfDay(hour: 10, minute: 15)
      ..duration = Duration(minutes: 15)
      ..location = "Telefoon"
      ..priority = "Hoog",
  ];

  List<AppointmentDTO> get appointments => _appointments;

  List<AppointmentDTO> getAppointmentsForDay(DateTime date) {
    return _appointments
        .where((appointment) => isSameDay(appointment.date, date))
        .toList();
  }
}
