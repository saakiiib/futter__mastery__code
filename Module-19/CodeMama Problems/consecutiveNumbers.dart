import 'dart:io';

bool canFormConsecutiveList(int n, List<int> arr) {
  if (n <= 0 || arr.length != n) {
    return false;
  }

  Set<int> uniqueNumbers = Set<int>.from(arr);

  if (uniqueNumbers.length != n) {
    return false;
  }

  int minValue =
      arr.reduce((value, element) => value < element ? value : element);
  int maxValue =
      arr.reduce((value, element) => value > element ? value : element);

  return maxValue - minValue == n - 1;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);

  List<int> arr =
      stdin.readLineSync()!.split(' ').map((e) => int.parse(e)).toList();

  print(canFormConsecutiveList(n, arr));
}
