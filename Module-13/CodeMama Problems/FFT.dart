//Full form of FFT is Fast Fourier transforms. Fast Fourier transforms are widely used for many applications in engineering, science, and mathematics. The basic ideas were popularized in 1965. In 1994, Gilbert Strang described the FFT as "the most important numerical algorithm of our lifetime". It is one of the complex algorithm to understand.

// But today your tusk is a simple one. You are here to help litle Kana. Her teacher had given her a list of N strings and told her to find the full form of FFT. She doesn’t know the full form of FFT. So she decide to write down those consecutive strings which contain the first character ‘F’,‘F’,‘T’. As N can be very large so Kana hire you to write a program that will complete her tusk.

import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<String> strings = [];
  for (int i = 0; i < n; i++) {
    strings.add(stdin.readLineSync()!);
  }

  int count = 0;
  List<String> fullForms = [];
  for (int i = 0; i < n - 2; i++) {
    if (strings[i][0] == 'F' &&
        strings[i + 1][0] == 'F' &&
        strings[i + 2][0] == 'T') {
      count++;
      fullForms.add('${strings[i]} ${strings[i + 1]} ${strings[i + 2]}');
    }
  }

  print(count);
  for (String form in fullForms) {
    print(form);
  }
}
