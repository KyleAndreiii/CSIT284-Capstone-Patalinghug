import '../models/class_session.dart';
import '../models/student.dart';

// 10 dummy class sessions
const List<ClassSession> dummySessions = [
  ClassSession(id: 'S01', title: 'Intro to Mobile Development', date: 'Nov 3, 2026', time: '1:00 PM', room: 'ITC 201'),
  ClassSession(id: 'S02', title: 'Dart Basics', date: 'Nov 5, 2026', time: '1:00 PM', room: 'ITC 201'),
  ClassSession(id: 'S03', title: 'Flutter Widgets', date: 'Nov 10, 2026', time: '1:00 PM', room: 'ITC 201'),
  ClassSession(id: 'S04', title: 'Layouts and Navigation', date: 'Nov 12, 2026', time: '1:00 PM', room: 'ITC 201'),
  ClassSession(id: 'S05', title: 'State Management', date: 'Nov 17, 2026', time: '1:00 PM', room: 'ITC 202'),
  ClassSession(id: 'S06', title: 'Forms and Input', date: 'Nov 19, 2026', time: '1:00 PM', room: 'ITC 202'),
  ClassSession(id: 'S07', title: 'Working with Firebase', date: 'Nov 24, 2026', time: '1:00 PM', room: 'ITC 202'),
  ClassSession(id: 'S08', title: 'Firestore CRUD', date: 'Nov 26, 2026', time: '1:00 PM', room: 'ITC 202'),
  ClassSession(id: 'S09', title: 'Testing and Debugging', date: 'Dec 1, 2026', time: '1:00 PM', room: 'ITC 203'),
  ClassSession(id: 'S10', title: 'Project Demo Prep', date: 'Dec 3, 2026', time: '1:00 PM', room: 'ITC 203'),
];

// 10 dummy students (fresh list each call so each session starts blank)
List<Student> dummyStudents() => [
      Student(id: '2024-0001', name: 'Justine Logers'),
      Student(id: '2024-0002', name: 'Mark Rosers'),
      Student(id: '2024-0003', name: 'Kaye Nakamura'),
      Student(id: '2024-0004', name: 'Kyle Nakamura'),
      Student(id: '2024-0005', name: 'Earl Roa Rodrigs'),
      Student(id: '2024-0006', name: 'Johanne Rigor Tangol'),
      Student(id: '2024-0007', name: 'Clarence Tayo Palautog'),
      Student(id: '2024-0008', name: 'Rex Tambok Balbakuwa'),
      Student(id: '2024-0009', name: 'Jhush Gattouz0'),
      Student(id: '2024-0010', name: 'Kyle Geatay'),
    ];
