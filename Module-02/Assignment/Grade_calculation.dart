void main() {
  List<int> grades = [85, 92, 78, 65, 88, 72];
  int sum = 0;

  for (int grade in grades) {
    sum += grade;
  }

  double average = sum / grades.length;
  int roundedAverage = average.round();
  print("Student's average grade: $average");
  print("Rounded average grade: $roundedAverage");

  if (roundedAverage >= 70) {
    print("Passed");
  } else {
    print("Failed");
  }
}
