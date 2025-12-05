import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainNavLayout extends StatelessWidget {
  final Widget child;

  const MainNavLayout({required this.child});

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    String pageTitle = '';

    return Scaffold(
      body: SafeArea(child: child),
      appBar: AppBar(
        leading: Icon(Icons.home_filled, color: Colors.white,),
        title: Text(pageTitle),
        backgroundColor: Color(0XFF00BBA7),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Color(0XFF00BBA7),
        currentIndex: currentIndex,
        onTap: (index) {
          switch (index) {
            case 0:
            pageTitle = 'Reminders';
              context.go('/');
              break;
            case 1:
            pageTitle = 'Agenda';
              context.go('/appointments');
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Start"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month_rounded), label: "Agenda"),
        //  BottomNavigationBarItem(icon: Icon(Icons.error_outline)), this is for eventual incident report
        ],
      ),
    );
  }
}
