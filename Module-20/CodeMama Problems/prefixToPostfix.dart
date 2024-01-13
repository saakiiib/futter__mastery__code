import 'dart:io';

bool isOperator(String c) {
 return c == '+' || c == '-' || c == '*' || c == '/';
}

String prefixToPostfix(String prefix) {
 var stack = [];
 for (var i = prefix.length - 1; i >= 0; i--) {
   var c = prefix[i];
   if (isOperator(c)) {
     var op1 = stack.removeLast();
     var op2 = stack.removeLast();
     var temp = op1 + op2 + c;
     stack.add(temp);
   } else {
     stack.add(c);
   }
 }
 return stack.first;
}

void main() {
 String input = stdin.readLineSync() ?? "";
 String output = prefixToPostfix(input);
 print(output);
}
