import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zorgwijzer_amarant_s4/models/reminderDto.dart';
import 'package:zorgwijzer_amarant_s4/viewmodels/reminderViewModel.dart';
import 'package:zorgwijzer_amarant_s4/widgets/reminderCard.dart';

class ReminderScreen extends StatefulWidget{
  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  @override
  Widget build(BuildContext context) {
    final reminderContext = context.watch<ReminderViewModel>();
    final List<ReminderDTO> reminders = reminderContext.reminders;
    
    return Column(
      children: [
        SizedBox(height: 30,),
        ...reminders.map((reminder) =>
        ReminderCard(reminder: reminder,))
      ],
    );
  }
}