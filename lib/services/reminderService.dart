import 'package:zorgwijzer_amarant_s4/api/apiClient.dart';
import 'package:zorgwijzer_amarant_s4/models/reminderDto.dart';

class ReminderService {

  final ApiClient client = ApiClient();

  Future<List<ReminderDTO>?> getAllReminders() async{
    final reminders = await client.get('/reminders');
    return (reminders as List).map((reminder) =>
    ReminderDTO.fromJson(reminder)).toList();

  }
}