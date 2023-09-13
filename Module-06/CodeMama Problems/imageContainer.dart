//You are working on a mobile screen that includes an image. The image needs to be positioned within a container in a way that ensures the containment of various image sizes. You will be given the image's width
// IW as input. Your task is to calculate the left margin for the image within the container.
import 'dart:io';

void main() {
  // Write your dart code from here
  int imageWidth = int.parse(stdin.readLineSync()!);

  // Container width
  int containerWidth = 1000;

  // Calculate the left margin
  int leftMargin = 0;
  if (imageWidth <= containerWidth) {
    int remainingSpace = containerWidth - imageWidth;
    leftMargin = remainingSpace ~/ 2;
  }

  // Output the left margin
  print(leftMargin);
}