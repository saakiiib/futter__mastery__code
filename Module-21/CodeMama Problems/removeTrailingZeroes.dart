import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  String result = removeTrailingZeroes(input);

  print(result);
}

String removeTrailingZeroes(String numberString) {
  List<String> parts = numberString.split(".");

  if (parts.length == 1) {
    return numberString;
  }

  String integerPart = parts[0];
  String decimalPart = parts[1].replaceAll(RegExp(r'0*$'), '');

  String result =
      decimalPart.isEmpty ? integerPart : '$integerPart.$decimalPart';

  return result;
}
