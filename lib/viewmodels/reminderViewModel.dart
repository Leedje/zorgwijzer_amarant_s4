import 'package:flutter/material.dart';
import 'package:zorgwijzer_amarant_s4/models/reminderDto.dart';
import 'package:zorgwijzer_amarant_s4/models/reminderUnsuccessfulAppointmentDto.dart';
import 'package:zorgwijzer_amarant_s4/services/reminderService.dart';

class ReminderViewModel extends ChangeNotifier {
  List<ReminderDTO>? _reminders = [];
  List<ReminderDTO>? get reminders => _reminders;

  final ReminderService reminderService;
  ReminderViewModel(this.reminderService);

  Future<void> getAllReminders() async {
    // final unsuccessfulReminders = getAllRemindersUnsuccessfulAppointments();
    // final appointmentReminders = getAppointmentReminders();
     _reminders = (await getAppointmentReminders());
    //i want to combine the list, and sort on the newest appointment,
    // meaning the reminders of unsuccessful appointments need to also have
    //a timeCreated field.
    //  appointmentsForDay.sort((a, b) => a.dateTime.compareTo(b.dateTime));

    notifyListeners();
  }

  Future<List<ReminderUnsuccessfulAppointmentDTO>?>
  getAllRemindersUnsuccessfulAppointments() async {
    return await reminderService.getAllRemindersUnsuccessfulAppointments();
  }

  Future<List<ReminderDTO>?> getAppointmentReminders() async {
    final _reminders = await reminderService.getAllReminders();
    notifyListeners();
    return _reminders;
  }
}
