import 'package:zorgwijzer_amarant_s4/api/apiClient.dart';
import 'package:zorgwijzer_amarant_s4/models/appointmentDto.dart';

class AppointmentService{

  final ApiClient _client = ApiClient();

  Future<List<AppointmentDTO>> getAllAppointments () async{
    final appointments = await _client.get('/appointments');
    print(appointments);
    appointments.forEach((appointment) =>
    print("Raw appointment JSON: $appointment"));

    final dtos = (appointments as List)
        .map((appointment) => AppointmentDTO.fromJson(appointment))
        .toList();
        dtos.forEach((dto) => {
          print("Mapped activity: ${dto.activity}"),
          print("mapped client: ${dto.client}"),
          print("Mapped location: ${dto.location}"),
          print("Mapped isCompleted: ${dto.isCompleted}"),
          print("Mapped duration: ${dto.duration}"),
          print("Mapped priority: ${dto.priority}"),
          print("Mapped dateTime: ${dto.dateTime}")
        });
    return (appointments as List).map(
      (appointment) => AppointmentDTO.fromJson(appointment)
    ).toList();
  }
}