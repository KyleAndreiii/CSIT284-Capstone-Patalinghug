import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../widgets/session_card.dart';
import 'attendance_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Class Sessions')),
      body: ListView.builder(
        itemCount: dummySessions.length,
        itemBuilder: (context, index) {
          final session = dummySessions[index];
          return SessionCard(
            session: session,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => AttendanceScreen(session: session),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
