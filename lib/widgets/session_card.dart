import 'package:flutter/material.dart';
import '../models/class_session.dart';

class SessionCard extends StatelessWidget {
  final ClassSession session;
  final VoidCallback onTap;

  const SessionCard({super.key, required this.session, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.qr_code_2)),
        title: Text(session.title),
        subtitle: Text('${session.date} • ${session.time} • ${session.room}'),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
