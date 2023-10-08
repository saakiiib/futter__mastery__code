//You are tasked with calculating the duration of a work shift, knowing the start and end times in hours. A work shift can start on one day and end on another day, but it should not exceed 24 hours.
import 'dart:io';

void main() {
  final input = stdin.readLineSync();

  if (input != null) {
    final List<String> inputParts = input.split(' ');

    if (inputParts.length == 2) {
      final int? startTime = int.tryParse(inputParts[0]);
      final int? endTime = int.tryParse(inputParts[1]);

      if (startTime != null && endTime != null) {
        int duration;

        if (endTime > startTime) {
          duration = endTime - startTime;
        } else {
          duration = (24 - startTime) + endTime;
        }

        print(duration);
      }
    }
  }
}
