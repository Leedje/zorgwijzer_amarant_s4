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
    return _appointments
        .where((appointment) => isSameDay(appointment.date, date))
        .toList();
  }

  List<AppointmentDTO> loadSampleAppointments() {
    final today = DateTime.now();
    final tomorrow = DateTime.now().add(const Duration(days: 1));

    return _appointments = [
      // Existing sample appointments
      AppointmentDTO()
        ..id = "1"
        ..title = "Doktersafspraak"
        ..resident = "Bram Jansen"
        ..date = DateTime(2025, 12, 7)
        ..time = DateTime(2025, 12, 7, 9, 0)
        ..duration = const Duration(minutes: 30)
        ..location = "Amarant Kliniek"
        ..priority = "Hoog",

      AppointmentDTO()
        ..id = "2"
        ..title = "Medicatiecontrole"
        ..resident = "Sophie de Vries"
        ..date = DateTime(2025, 12, 7)
        ..time = DateTime(2025, 12, 7, 11, 0)
        ..duration = const Duration(minutes: 20)
        ..location = "Apotheek Tilburg"
        ..priority = "Medium",

      AppointmentDTO()
        ..id = "3"
        ..title = "Wandeling in het park"
        ..resident = "Jan Peters"
        ..date = DateTime(2025, 12, 7)
        ..time = DateTime(2025, 12, 7, 14, 30)
        ..duration = const Duration(minutes: 75)
        ..location = "Spoorpark"
        ..priority = "Laag",

      AppointmentDTO()
        ..id = "4"
        ..title = "Telefonisch overleg huisarts"
        ..resident = "Maria van Dijk"
        ..date = DateTime(2025, 12, 10)
        ..time = DateTime(2025, 12, 10, 10, 15)
        ..duration = const Duration(minutes: 15)
        ..location = "Telefoon"
        ..priority = "Hoog",

      // --- New appointments for today ---
      AppointmentDTO()
        ..id = "5"
        ..title = "Teamvergadering"
        ..resident = "Medewerkersgroep"
        ..date = today
        ..time = DateTime(today.year, today.month, today.day, 9, 0)
        ..duration = const Duration(minutes: 60)
        ..location = "Kantoor Amarant"
        ..priority = "Medium",

      AppointmentDTO()
        ..id = "6"
        ..title = "Lunch met cliënt"
        ..resident = "Kees van Dam"
        ..date = today
        ..time = DateTime(today.year, today.month, today.day, 12, 30)
        ..duration = const Duration(minutes: 45)
        ..location = "Eetzaal"
        ..priority = "Laag",

      AppointmentDTO()
        ..id = "7"
        ..title = "Fysiotherapie"
        ..resident = "Anna Smits"
        ..date = today
        ..time = DateTime(today.year, today.month, today.day, 14, 0)
        ..duration = const Duration(minutes: 30)
        ..location = "Revalidatiecentrum"
        ..priority = "Hoog",

      AppointmentDTO()
        ..id = "8"
        ..title = "Bezoek familie"
        ..resident = "Tom de Boer"
        ..date = today
        ..time = DateTime(today.year, today.month, today.day, 16, 0)
        ..duration = const Duration(minutes: 90)
        ..location = "Amarant Woonhuis"
        ..priority = "Laag",

      AppointmentDTO()
        ..id = "9"
        ..title = "Avondmedicatie"
        ..resident = "Sophie de Vries"
        ..date = today
        ..time = DateTime(today.year, today.month, today.day, 20, 0)
        ..duration = const Duration(minutes: 15)
        ..location = "Apotheek Tilburg"
        ..priority = "Hoog",

      // --- New appointments for tomorrow ---
      AppointmentDTO()
        ..id = "10"
        ..title = "Doktersbezoek"
        ..resident = "Bram Jansen"
        ..date = tomorrow
        ..time = DateTime(tomorrow.year, tomorrow.month, tomorrow.day, 10, 0)
        ..duration = const Duration(minutes: 30)
        ..location = "Amarant Kliniek"
        ..priority = "Hoog",

      AppointmentDTO()
        ..id = "11"
        ..title = "Groepsactiviteit schilderen"
        ..resident = "Groep bewoners"
        ..date = tomorrow
        ..time = DateTime(tomorrow.year, tomorrow.month, tomorrow.day, 13, 0)
        ..duration = const Duration(minutes: 120)
        ..location = "Activiteitenruimte"
        ..priority = "Medium",

      AppointmentDTO()
        ..id = "12"
        ..title = "Avondwandeling"
        ..resident = "Jan Peters"
        ..date = tomorrow
        ..time = DateTime(tomorrow.year, tomorrow.month, tomorrow.day, 18, 30)
        ..duration = const Duration(minutes: 60)
        ..location = "Spoorpark"
        ..priority = "Laag",
    ];
  }

  Future<void> getAllAppointments() async{
    _appointments = await appointmentService.getAllAppointments();
    notifyListeners();
  }
}
