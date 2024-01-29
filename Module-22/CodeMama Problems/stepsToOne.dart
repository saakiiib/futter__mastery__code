import 'dart:io';

int minStepsToOne(int n) {
  if (n == 1) {
    return 0;
  }

  List<int> dp = List.filled(n + 1, 0);

  for (int i = 2; i <= n; i++) {
    dp[i] = 1 + dp[i - 1];
    if (i % 2 == 0) {
      dp[i] = dp[i].compareTo(1 + dp[i ~/ 2]) < 0 ? dp[i] : 1 + dp[i ~/ 2];
    }
    if (i % 3 == 0) {
      dp[i] = dp[i].compareTo(1 + dp[i ~/ 3]) < 0 ? dp[i] : 1 + dp[i ~/ 3];
    }
  }

  return dp[n];
}

void main() {
  int number = int.parse(stdin.readLineSync()!);

  int steps = minStepsToOne(number);

  print(steps);
}
