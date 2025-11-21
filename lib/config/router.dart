import 'package:go_router/go_router.dart';
import 'package:zorgwijzer_amarant_s4/layout/mainnavlayout.dart';
import 'package:zorgwijzer_amarant_s4/screens/reminderScreen.dart';
import 'package:zorgwijzer_amarant_s4/screens/weeklyplannnerScreen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainNavLayout(child: child),
      routes: [
        GoRoute(
          name: 'reminders',
          path: '/',
          builder: (context, state) => ReminderScreen(),
        ),
        GoRoute(
          name: 'weekly-planner',
          path: '/weeklyplanner',
          builder: (context, state) => WeeklyPlannerScreen(),
        ),
      ],
    ),

  ],
);
