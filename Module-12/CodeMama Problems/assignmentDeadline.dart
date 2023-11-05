//There’re N minutes left for the class to end, and there are two remaining assignments for you to complete. Find out if you will manage to complete both assignments today.

import 'dart:io';

void main() {

  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int minutesLeft = input[0];
  int timeAssignmentA = input[1];
  int timeAssignmentB = input[2];


  if (timeAssignmentA + timeAssignmentB <= minutesLeft) {
    print("Yes");
  } else {
    print("No");
  }
}
