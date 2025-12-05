import 'package:zorgwijzer_amarant_s4/api/apiClient.dart';
import 'package:zorgwijzer_amarant_s4/models/appointmentDto.dart';

class WeekPlannerService{

  final ApiClient _client = ApiClient();

  Future<List<AppointmentDTO>> getAllAppointments () async{
    final appointments = await _client.get('/appointment');
    return (appointments as List).map(
      (appointment) => AppointmentDTO.fromJson(appointment)
    ).toList();
  }
}