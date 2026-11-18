import 'package:flutter/material.dart';
import '../data/dummy_data.dart';
import '../models/class_session.dart';
import '../models/student.dart';
import '../widgets/student_tile.dart';

class AttendanceScreen extends StatefulWidget {
  final ClassSession session;

  const AttendanceScreen({super.key, required this.session});

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  late final List<Student> students = dummyStudents();

  int get presentCount => students.where((s) => s.isPresent).length;

  // Placeholder for the QR scan: marks the next absent student present.
  void simulateScan() {
    final index = students.indexWhere((s) => !s.isPresent);
    if (index == -1) return;
    setState(() => students[index].isPresent = true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.session.title)),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                const Icon(Icons.qr_code_2, size: 96),
                const SizedBox(height: 8),
                Text('Session code: ${widget.session.id}'),
                const SizedBox(height: 4),
                Text(
                  'Present: $presentCount / ${students.length}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                return StudentTile(
                  student: student,
                  onToggle: () =>
                      setState(() => student.isPresent = !student.isPresent),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: simulateScan,
        icon: const Icon(Icons.qr_code_scanner),
        label: const Text('Simulate scan'),
      ),
    );
  }
}
