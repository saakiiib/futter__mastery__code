import 'dart:io';

bool isOperator(String c) {
 return c == '+' || c == '-' || c == '*' || c == '/';
}

int precedence(String op) {
 if (op == '+' || op == '-') return 1;
 if (op == '*' || op == '/') return 2;
 return 0;
}

String infixToPrefix(String infix) {
 StringBuffer prefix = StringBuffer();
 List<String> stack = [];

 for (int i = infix.length - 1; i >= 0; i--) {
   String c = infix[i];

   if (c == ')') {
     stack.add(c);
   } else if (c == '(') {
     while (stack.isNotEmpty && stack.last != ')') {
       prefix.write(stack.removeLast());
     }
     stack.removeLast();
   } else if (!isOperator(c)) {
     prefix.write(c);
   } else {
     while (stack.isNotEmpty && precedence(stack.last) > precedence(c)) {
       prefix.write(stack.removeLast());
     }
     stack.add(c);
   }
 }

 while (stack.isNotEmpty) {
   prefix.write(stack.removeLast());
 }

 return prefix.toString().split('').reversed.join('');
}

void main() {
 String input = stdin.readLineSync() ?? "";
 
 String output = infixToPrefix(input);
 
 print(output);
}
