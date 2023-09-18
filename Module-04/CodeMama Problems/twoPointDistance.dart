import 'dart:io';
import 'dart:math';

void main() {
  var  input = stdin.readLineSync()!;
  var coordinates = input.split(' ').map(double.tryParse).toList();

  if (coordinates.length == 4 && !coordinates.contains(null)) {
    var x1 = coordinates[0]!;
    var y1 = coordinates[1]!;
    var x2 = coordinates[2]!;
    var y2 = coordinates[3]!;

    var distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
    print(distance.toStringAsFixed(2));
  }
}
