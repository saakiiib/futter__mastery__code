//The input consists of an integer which is the length of the array. Then there will be given boolean numbers depending on the length of the array. All the array elements will be boolean numbers.
import 'dart:io';

int countTrueValues(List<bool> arr) {
  int count = 0;
  for (bool value in arr) {
    if (value) {
      count++;
    }
  }
  return count;
}

void main() {

  List<String> input = stdin.readLineSync()!.split(' ');

  int length = int.parse(input[0]);
  List<bool> booleanArray = [];

  for (int i = 1; i <= length; i++) {
    booleanArray.add(input[i] == '1');
  }

  int trueCount = countTrueValues(booleanArray);

  print(trueCount);
}
