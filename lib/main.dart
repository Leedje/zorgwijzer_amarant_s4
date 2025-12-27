import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zorgwijzer_amarant_s4/config/router.dart';
import 'package:zorgwijzer_amarant_s4/services/appointmentService.dart';
import 'package:zorgwijzer_amarant_s4/services/reminderService.dart';
import 'package:zorgwijzer_amarant_s4/viewmodels/appointmentViewModel.dart';
import 'package:zorgwijzer_amarant_s4/viewmodels/reminderViewModel.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (appointmentContext) => AppointmentViewModel(AppointmentService())),
        ChangeNotifierProvider(create: (reminderContext) => ReminderViewModel(ReminderService())),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.red, 
          ),
          brightness: Brightness.light,
        ),
      ),
    );
  }
}
