// Write a program that counts the number of characters in a string entered by the user.

import 'dart:io';
 
void main() {

    String input = stdin.readLineSync()!;
    int  charCount = input.length;
    print(charCount);
    
}