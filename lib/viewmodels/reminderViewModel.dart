import 'package:flutter/material.dart';
import 'package:zorgwijzer_amarant_s4/models/reminderDto.dart';

class ReminderViewModel extends ChangeNotifier {
  final List<ReminderDTO> _reminders = [
    ReminderDTO()
      ..id = "r1"
      ..title = "Doktersafspraak met Tim"
      ..description = "Morgen moet je om 14:30 naar de huisarts met Tim."
      ..appointmentId = "1",

    ReminderDTO()
      ..id = "r2"
      ..title = "Wandeling met Sasha"
      ..description = "In 2 uren moet je met Sasha wandelen (13:25)."
      ..appointmentId = "3",

    ReminderDTO()
      ..id = "r3"
      ..title = "Nieuwe afspraak ingepland"
      ..description =
          "Bewoner Tim heeft een bezoek met verwanten op 10 december."
      ..appointmentId = "5",

    ReminderDTO()
      ..id = "r4"
      ..title = "Medicatiecontrole Sophie"
      ..description =
          "Herinnering: Sophie heeft een medicatiecontrole om 11:00 bij de apotheek."
      ..appointmentId = "2",
  ];

  List<ReminderDTO> get reminders => _reminders;

  List<ReminderDTO> getAllReminders() {
    return _reminders;
  }
}
