import 'package:zorgwijzer_amarant_s4/api/apiClient.dart';
import 'package:zorgwijzer_amarant_s4/models/reminderDto.dart';
import 'package:zorgwijzer_amarant_s4/models/reminderUnsuccessfulAppointmentDto.dart';

class ReminderService {
  final ApiClient client = ApiClient();

  Future<List<ReminderDTO>?> getAllReminders() async {
    final reminders = await client.get('/reminders');
    if (reminders == null) {
      return null;
    }
    return (reminders as List)
        .map((reminder) => ReminderDTO.fromJson(reminder))
        .toList();
  }

  Future<List<ReminderUnsuccessfulAppointmentDTO>?>
  getAllRemindersUnsuccessfulAppointments() async {
    final unsuccessfulReminders = await client.get(
      '/unsuccessful-appointments',
    );
    if (unsuccessfulReminders == null) {
      return null;
    }

    return (unsuccessfulReminders as List)
        .map(
          (reminder) => ReminderUnsuccessfulAppointmentDTO.fromJson(reminder),
        )
        .toList();
  }
}
