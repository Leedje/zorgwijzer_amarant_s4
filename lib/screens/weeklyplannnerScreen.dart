import 'package:flutter/material.dart';

class WeeklyPlannerScreen extends StatefulWidget {
  @override
  State<WeeklyPlannerScreen> createState() => _WeeklyPlannerScreenState();
}

class _WeeklyPlannerScreenState extends State<WeeklyPlannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
      
          //Week select container
          Container(
      
          ),
      
          //Weekday numeric display container
          Container(),
      
          ListView.builder(itemBuilder: (context, index) {
            final appointment;
            // final appointment = weekplanner.appointments[index];
            return Container(
              
            );
          }),

          
        ],
      ),
    );
  }
}
