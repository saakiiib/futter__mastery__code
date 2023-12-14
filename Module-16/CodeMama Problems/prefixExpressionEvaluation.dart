import 'dart:io';

class PrefixEvaluator {
  late List<String> tokens;
  late List<int> stack;

  PrefixEvaluator(String expression)
      : tokens = expression.split('').reversed.toList(),
        stack = [];

  int? evaluate() {
    for (String token in tokens) {
      if (isNumeric(token)) {
        stack.add(int.parse(token));
      } else {
        if (stack.length < 2) {
          throw Exception("Invalid prefix expression");
        }
        int operand1 = stack.removeLast();
        int operand2 = stack.removeLast();
        int result = performOperation(operand1, operand2, token);
        stack.add(result);
      }
    }
    return stack.length == 1 ? stack.first : null;
  }

  bool isNumeric(String s) {
    return double.tryParse(s) != null;
  }

  int performOperation(int operand1, int operand2, String operator) {
    switch (operator) {
      case '+':
        return operand1 + operand2;
      case '-':
        return operand1 - operand2;
      case '*':
        return operand1 * operand2;
      case '/':
        if (operand2 == 0) {
          throw Exception("Division by zero");
        }
        return operand1 ~/ operand2; // Using ~/ for integer division
      default:
        throw Exception("Unsupported operator: $operator");
    }
  }
}

void main() {
  String? input = stdin.readLineSync();
  if (input != null && input.isNotEmpty) {
    PrefixEvaluator evaluator = PrefixEvaluator(input);
    int? result = evaluator.evaluate();
    print(result);
  }
}
