import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainNavLayout extends StatefulWidget {
  final Widget child;

  const MainNavLayout({required this.child, super.key});

  @override
  State<MainNavLayout> createState() => _MainNavLayoutState();
}

class _MainNavLayoutState extends State<MainNavLayout> {
  int _currentIndex = 0;
  String _pageTitle = 'Reminders';
  IconData _leadingIcon = Icons.home;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      switch (index) {
        case 0:
          _pageTitle = 'Reminders';
           _leadingIcon = Icons.notification_important;
          context.go('/');
          break;
        case 1:
          _pageTitle = 'Agenda';
          _leadingIcon = Icons.calendar_month_rounded;
          context.go('/appointments');

          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: widget.child),
      appBar: AppBar(
        leading: Icon(_leadingIcon, color: Colors.white,),
        title: Text(_pageTitle, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
        backgroundColor: const Color(0XFF00BBA7),
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: const Color(0XFF00BBA7),
        currentIndex: _currentIndex, 
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            label: "Reminders",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: "Agenda",
          ),
          // BottomNavigationBarItem(icon: Icon(Icons.error_outline), label: "Incidenten"),
        ],
      ),
    );
  }
}
