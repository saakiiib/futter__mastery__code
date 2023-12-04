import 'dart:io';

void main() {
  List<int> numbers = List<int>.from(stdin
      .readLineSync()!
      .split(' ')
      .map(int.tryParse)
      .where((num) => num != null));

  var frequencyMap = <int, int>{};
  for (var num in numbers) frequencyMap[num] = (frequencyMap[num] ?? 0) + 1;

  var sortedNumbers = numbers.toSet().toList()
    ..sort((a, b) {
      int freqComparison = frequencyMap[a]!.compareTo(frequencyMap[b]!);
      return freqComparison != 0
          ? freqComparison
          : numbers.indexOf(a).compareTo(numbers.indexOf(b));
    });

  print(sortedNumbers.length);
  sortedNumbers.forEach((num) => print('$num ${frequencyMap[num]}'));
}
