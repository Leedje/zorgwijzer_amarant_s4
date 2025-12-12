import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:zorgwijzer_amarant_s4/models/appointmentDto.dart';
import 'package:zorgwijzer_amarant_s4/viewmodels/appointmentViewModel.dart';
import 'package:zorgwijzer_amarant_s4/widgets/appointmentCard.dart';

class AgendaScreen extends StatefulWidget {
  @override
  State<AgendaScreen> createState() => _AgendaScreen();
}

class _AgendaScreen extends State<AgendaScreen> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  List<AppointmentDTO>? _appointments;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final appointmentsContext = context.read<AppointmentViewModel>();
      await appointmentsContext.loadSampleAppointments();
      setState(() {
        _appointments = appointmentsContext.getAppointmentsForDay(
          _selectedDay!,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final appointmentsContext = context.watch<AppointmentViewModel>();

    return Column(
      children: [
        TableCalendar(
          calendarFormat: _calendarFormat,
          headerStyle: HeaderStyle(
            formatButtonDecoration: BoxDecoration(
              color: Colors.teal[200],
              border: BoxBorder.all(color: Colors.teal),
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          availableCalendarFormats: const {
            CalendarFormat.month: "maand calender",
            CalendarFormat.twoWeeks: "2 weken",
            CalendarFormat.week: "week",
          },
          locale: 'nl_NL',
          firstDay: DateTime.utc(2024, 1, 1),
          lastDay: DateTime.now().add(const Duration(days: 365)),
          focusedDay: _focusedDay,
          selectedDayPredicate: (day) {
            return isSameDay(_selectedDay, day);
          },
          onDaySelected: (selectedDay, focusedDay) {
            if (!isSameDay(_selectedDay, focusedDay)) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
                _appointments = appointmentsContext.getAppointmentsForDay(
                  selectedDay,
                );
              });
            }
          },
          onFormatChanged: (format) {
            if (_calendarFormat != format) {
              setState(() {
                _calendarFormat = format;
              });
            }
          },
          onPageChanged: (focusedDay) {
            _focusedDay = focusedDay;
          },
          eventLoader: (day) {
            return appointmentsContext.getAppointmentsForDay(day);
          },
          calendarStyle: CalendarStyle(
            todayDecoration: BoxDecoration(
              color: const Color.fromARGB(255, 131, 160, 157),
              shape: BoxShape.circle,
            ),
            selectedDecoration: BoxDecoration(
              color: Colors.teal,
              shape: BoxShape.circle,
            ),
          ),
        ),

        Expanded(
          child: _appointments == null || _appointments!.isEmpty
              ? Center(child: Text('Geen afspraken.'))
              : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                    children: _appointments!
                        .map(
                          (appointment) =>
                              AppointmentCard(appointment: appointment),
                        )
                        .toList(),
                  ),
              ),
        ),
      ],
    );
  }
}
