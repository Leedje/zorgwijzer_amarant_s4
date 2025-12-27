import 'package:flutter/material.dart';
import 'package:zorgwijzer_amarant_s4/models/reminderDto.dart';

class ReminderCard extends StatelessWidget{
  final ReminderDTO reminder;
  const ReminderCard({required this.reminder});

  String formatTime(DateTime time){
    final hour = time.hour.toString().padLeft(2,'0');
    final minutes = time.minute.toString().padLeft(2, "0");

    return '${hour}:${minutes}';
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      width: MediaQuery.of(context).size.width - 50,
      child: Card(
        color: const Color.fromARGB(255, 155, 174, 173),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children: [
                  Text(reminder.title, style: TextStyle(fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text(formatTime(reminder.timeCreated), //display time sent? or for example 8m geleden 
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Text(reminder.description)
            ],
          ),
        ),
      ),
    );
  }
}