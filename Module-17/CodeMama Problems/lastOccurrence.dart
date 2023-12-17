import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);

  List<int> M =
      List<int>.from(stdin.readLineSync()!.split(' ').map((e) => int.parse(e)));

  int P = int.parse(stdin.readLineSync()!);

  int result = findLastOccurrenceIndex(M, N, P);

  if (result != -1) {
    print("$result");
  } else {
    print("Element not found");
  }
}

int findLastOccurrenceIndex(List<int> arr, int size, int target) {
  int low = 0, high = size - 1;
  int result = -1;

  while (low <= high) {
    int mid = low + ((high - low) ~/ 2);

    if (arr[mid] == target) {
      result = mid;
      low = mid +
          1; // Continue searching on the right side for the last occurrence
    } else if (arr[mid] > target) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }

  return result;
}
