import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentTile extends StatelessWidget {
  final Student student;
  final VoidCallback onToggle;

  const StudentTile({super.key, required this.student, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;
    return ListTile(
      leading: CircleAvatar(child: Text(student.name[0])),
      title: Text(student.name),
      subtitle: Text(student.id),
      trailing: Icon(
        student.isPresent ? Icons.check_circle : Icons.circle_outlined,
        color: student.isPresent ? Colors.green : color.outline,
      ),
      onTap: onToggle,
    );
  }
}
