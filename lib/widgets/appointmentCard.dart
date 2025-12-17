import 'package:flutter/material.dart';
import 'package:zorgwijzer_amarant_s4/models/appointmentDto.dart';

class AppointmentCard extends StatelessWidget {
  final AppointmentDTO appointment;

  const AppointmentCard({required this.appointment});

  @override
  Widget build(BuildContext context) {

    String formatDuration(Duration duration) {
      if (duration.inMinutes < 60) {
        return "${duration.inMinutes} min";
      } else {
        final hours = duration.inHours;
        final minutes = duration.inMinutes % 60;
        if (minutes == 0) {
          return "$hours uur";
        } else {
          return "$hours:${minutes.toString().padLeft(2, '0')} uur";
        }
      }
    }

    String formatTime(DateTime time) {
     
      final endDateTime = time.add(appointment.duration);

      final start =
          "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
      final end =
          "${endDateTime.hour.toString().padLeft(2, '0')}:${endDateTime.minute.toString().padLeft(2, '0')}";

      return appointment.duration.inMinutes < 60
          ? "$start - $end (${formatDuration(appointment.duration)})"
          : "$start - $end (${formatDuration(appointment.duration)})";
    }

    Color determinePriorityColor(String priority){
      switch (priority) {
        case "Hoog":
        return Colors.red;
        case "Gemiddeld":
        return Colors.amber.shade300;
        case "Laag":
        return Colors.greenAccent.shade200;
        default: Colors.blueGrey;
        }
      return Colors.white;
    }

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: const Color.fromARGB(255, 140, 198, 190),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //priority and action buttons
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          color: determinePriorityColor(appointment.priority),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(appointment.priority, style: TextStyle(fontWeight: FontWeight.bold),),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 235,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit_square),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete_outlined),
                        ),
                      ],
                    ),

                    // Data Display
                    Text(
                      formatTime(appointment.dateTime),
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${appointment.activity} met ${appointment.client}',
                      softWrap: true,
                      overflow: TextOverflow.clip,
                      maxLines: null,
                    ),
                    Text('Locatie: ${appointment.location}'),
                    // notulen veld om aan te geven of een verwante met de client meegaat bvb. zodat de medewerkers het niet vergeten.

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
