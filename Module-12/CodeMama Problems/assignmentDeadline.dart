//There’re N minutes left for the class to end, and there are two remaining assignments for you to complete. Find out if you will manage to complete both assignments today.

import 'dart:io';

void main() {

  List<String> inputs = stdin.readLineSync()!.split(' ');
  int N = int.parse(inputs[0]);
  int A = int.parse(inputs[1]);
  int B = int.parse(inputs[2]);
  canCompleteAssignments(N, A, B);
}

void canCompleteAssignments(int N, int A, int B) {
  if (A + B <= N) {
    print('Yes');
  } else {
    print('No');
  }
}

