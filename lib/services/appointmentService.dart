import 'package:zorgwijzer_amarant_s4/api/apiClient.dart';
import 'package:zorgwijzer_amarant_s4/models/appointmentDto.dart';

class AppointmentService{

  final ApiClient _client = ApiClient();

  Future<List<AppointmentDTO>?> getAllAppointments () async{
    final appointments = await _client.get('/appointments');

    if (appointments == null){
      return null;
    }

    return (appointments as List).map(
      (appointment) => AppointmentDTO.fromJson(appointment)
    ).toList();
  }
}