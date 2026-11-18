# Attendance Checker (QR-based)

**Course:** CSIT284
**Name:** Patalinghug, Kyle Andrei F.
**Workstation Number:** WS-__ <!-- TODO: replace with your workstation number -->

## Project Description
A Flutter app that lets a teacher start a class session and mark students present.
In the final version, the teacher generates a QR code per class session and students
scan it to mark themselves present. The app shows an attendance list per session.

Scope: one class/section only, no report export.

## Current Progress (minimum requirements)
- Running Flutter project (Material 3)
- `lib/screens/`, `lib/widgets/`, `lib/models/` folders with files
- Navigation: Sessions screen -> Attendance screen
- Dummy data: 10 class sessions and 10 students

## Planned Features
- QR generation per session (qr_flutter)
- QR scanning for students (mobile_scanner)
- Firebase backend for sessions and attendance
