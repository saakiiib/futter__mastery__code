import 'dart:io';

void main() {
    
  final fruitNames = {
    31231: 'Banana',
    43861: 'Elderberry',
    82678: 'HoneydewMelon',
    23456: 'Apple',
    78901: 'Mango',
    98765: 'Nectarine',
    45678: 'Orange',
    67890: 'Raspberry',
    21098: 'Tangerine',
  };

  final input = int.parse(stdin.readLineSync()!);

  if (fruitNames.containsKey(input)) {
    final fruitName = fruitNames[input];
    print(fruitName);
  } else {
    print('Fruit not found');
  }
}
