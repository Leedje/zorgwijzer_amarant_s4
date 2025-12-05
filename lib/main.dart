import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zorgwijzer_amarant_s4/config/router.dart';
import 'package:zorgwijzer_amarant_s4/viewmodels/appointmentViewModel.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (appointmentContext) => AppointmentViewModel(),
      child: MaterialApp.router(
        routerConfig: appRouter,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: 
          Colors.red),
          brightness: Brightness.light,
        ),
        ),
    );
  }
}
