import 'dart:io';

void main() {
  print("Enter string:");
  String input = stdin.readLineSync() ?? "";

  if (areBracketsBalanced(input)) {
    print("Brackets are balanced.");
  } else {
    print("Brackets are not balanced.");
  }
}

bool areBracketsBalanced(String input) {
  List<String> stack = [];

  Map<String, String> bracketMappings = {
    '}': '{',
    ')': '(',
    ']': '[',
  };

  for (int i = 0; i < input.length; i++) {
    String currentChar = input[i];

    if (bracketMappings.containsKey(currentChar)) {
      String topElement = stack.isEmpty ? '#' : stack.removeLast();

      if (topElement != bracketMappings[currentChar]) {
        return false;
      }
    } else {
      stack.add(currentChar);
    }
  }

  return stack.isEmpty;
}
