import 'package:flutter/material.dart';
import 'package:zorgwijzer_amarant_s4/models/appointmentDto.dart';

class AppointmentCard extends StatelessWidget {

  final AppointmentDTO appointment;

  const AppointmentCard({required this.appointment});

  @override
  Widget build(BuildContext context) {
    
    // setCardColor(String priority){
    //   switch (Color){
    //     case "hoog":
    //      Color(Colors.red),
    //     case "medium":
    //     Color(Colors.greenAccent),
    //     case "laag":
    //     Color(Colors.blueGrey)
    //   }
    // }

    String formatTime(TimeOfDay time) {
      final now = DateTime.now();
      final startDateTime = DateTime(
        now.year,
        now.month,
        now.day,
        time.hour,
        time.minute,
      );
      final endDateTime = startDateTime.add(appointment.duration);

      final start =
          "${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}";
      final end =
          "${endDateTime.hour.toString().padLeft(2, '0')}:${endDateTime.minute.toString().padLeft(2, '0')}";

      return "$start - $end (${appointment.duration.inMinutes} min)";
    }

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: const Color.fromARGB(255, 222, 244, 242),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(width: MediaQuery.of(context).size.width - 50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    //priority and action buttons
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text('Prioriteit'),
                        )),
                        SizedBox(width: MediaQuery.of(context).size.width - 235),
                        IconButton(onPressed: () {}, icon: Icon(Icons.edit_square)),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.delete_outlined),
                        ),
                      ],
                    ),
                    
                    // Data Display
                    Text(formatTime(appointment.time), style: TextStyle(fontWeight: FontWeight.bold),),  
                    Text('${appointment.title} met ${appointment.resident}', softWrap: true, overflow: TextOverflow.clip, maxLines: null,),
                    Text('Locatie: ${appointment.location}'),
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
