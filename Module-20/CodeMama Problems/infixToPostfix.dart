import 'dart:io';

bool isOperator(String c) {
  return c == '+' || c == '-' || c == '*' || c == '/';
}

int precedence(String op) {
  if (op == '+' || op == '-') return 1;
  if (op == '*' || op == '/') return 2;
  return 0;
}

String infixToPostfix(String infix) {
  StringBuffer postfix = StringBuffer();
  List<String> stack = [];

  for (int i = 0; i < infix.length; i++) {
    String c = infix[i];

    if (c == '(') {
      stack.add(c);
    } else if (c == ')') {
      while (stack.isNotEmpty && stack.last != '(') {
        postfix.write(stack.removeLast());
      }
      stack.removeLast();
    } else if (!isOperator(c)) {
      postfix.write(c);
    } else {
      while (stack.isNotEmpty && precedence(stack.last) >= precedence(c)) {
        postfix.write(stack.removeLast());
      }
      stack.add(c);
    }
  }

  while (stack.isNotEmpty) {
    postfix.write(stack.removeLast());
  }

  return postfix.toString();
}

void main() {

  String input = stdin.readLineSync() ?? "";
  
  String output = infixToPostfix(input);
  
  print(output);
}
