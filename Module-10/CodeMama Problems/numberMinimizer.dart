//Given a string S representing a very large integer, minimize S by changing at most K digits, such that S still doesn't contain any leading zeros. Input length and output length should be same.
import 'dart:io';

void main() {
  var input = stdin.readLineSync()!.split(' ');
  var S = input[0];
  var K = int.parse(input[1]);

  var result = minimizeString(S, K);
  print("Min = $result");
}

String minimizeString(String S, int K) {
  var digits = S.split('').map(int.parse).toList();

  if (K == 0) return S;

  if (digits.length == 1) {
    return "1";
  }

  if (digits[0] != 1) {
    digits[0] = 1;
    K--;
  }

  for (var i = 1; i < digits.length && K > 0; i++) {
    if (digits[i] != 0) {
      digits[i] = 0;
      K--;
    }
  }

  return digits.join();
}
