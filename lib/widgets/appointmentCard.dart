import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          
          //Date circle
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color:  Color(0XFF00BBA7)),
              shape: BoxShape.circle
            ),
            child: Text('14', style: TextStyle(color: Color(0XFF0B4F4A)),),
          ),

          //Appointment card
          Card(
            elevation: 0,
            margin: EdgeInsets.all(4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //priority and action buttons
                Row(
                  children: [
                    Text('Priority'),
                    SizedBox(width: 30,),
                    IconButton(onPressed: () {

                    }, icon: Icon(Icons.edit_square)),
                    SizedBox(width: 15,),
                    IconButton(onPressed: () {}, icon: Icon(Icons.delete_outlined)),
                  ],
                ),

                // Data Display

                Text('Time - Time ( duration )'),
                Text('Activity name with Resident'),
                Text('Locatie: 123 BLDV'),

              ],
            ),
          ),
        ],
      ),
    );
  }
}