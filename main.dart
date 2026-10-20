import 'dart:io';

class Student {
  String fullName;
  String idNumber;
  double grade1;
  double grade2;
  double grade3;

  Student(this.fullName, this.idNumber, this.grade1, this.grade2, this.grade3);

  double computeGrade() {
    return (grade1 + grade2 + grade3) / 3;
  }
}

void main() {
  stdout.write('Enter full name: ');
  String fullName = stdin.readLineSync()!;

  stdout.write('Enter ID number: ');
  String idNumber = stdin.readLineSync()!;

  stdout.write('Enter grade for Subject 1: ');
  double grade1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter grade for Subject 2: ');
  double grade2 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter grade for Subject 3: ');
  double grade3 = double.parse(stdin.readLineSync()!);

  Student student = Student(fullName, idNumber, grade1, grade2, grade3);
  double average = student.computeGrade();

  String status;
  if (average >= 75) {
    status = 'Passed';
  } else if (average >= 70) {
    status = 'Conditional';
  } else {
    status = 'Failed';
  }

  print('\n===== STUDENT GRADE REPORT =====');
  print('Full Name: ${student.fullName}');
  print('ID Number: ${student.idNumber}');

  List<double> grades = [student.grade1, student.grade2, student.grade3];
  print('\nSubject Grades:');
  for (int i = 0; i < grades.length; i++) {
    print('Subject ${i + 1}: ${grades[i].toStringAsFixed(2)}');
  }

  print('\nAverage Grade: ${average.toStringAsFixed(2)}');
  print('Status: $status');
  print('================================');
}
