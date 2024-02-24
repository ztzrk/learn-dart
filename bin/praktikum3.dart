import 'dart:math' as math;
import 'dart:io';

void main() {
  print("Choose a function to run:");
  print("1. Square Area");
  print("2. Square Perimeter");
  print("3. Rectangle Area");
  print("4. Rectangle Perimeter");
  print("5. Circle Area");
  print("6. Circle Parameter");
  print("7. Combine Words");
  print("8. Cylinder Volume");
  print("9. Check Palindrome");
  print("10. List Factors");

  var choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      print("Enter side length:");
      var side = int.parse(stdin.readLineSync()!);
      print("Square Area: ${squareArea(side)}");
      break;
    case 2:
      print("Enter side length:");
      var side = int.parse(stdin.readLineSync()!);
      print("Square Perimeter: ${squarePerimeter(side)}");
      break;
    case 3:
      print("Enter width:");
      var width = int.parse(stdin.readLineSync()!);
      print("Enter length:");
      var length = int.parse(stdin.readLineSync()!);
      print("Rectangle Area: ${rectangleArea(width, length)}");
      break;
    case 4:
      print("Enter width:");
      var width = int.parse(stdin.readLineSync()!);
      print("Enter length:");
      var length = int.parse(stdin.readLineSync()!);
      print("Rectangle Perimeter: ${rectanglePerimeter(width, length)}");
      break;
    case 5:
      print("Enter radius:");
      var radius = int.parse(stdin.readLineSync()!);
      print("Circle Area: ${circleArea(radius)}");
      break;
    case 6:
      print("Enter radius:");
      var radius = int.parse(stdin.readLineSync()!);
      print("Circle Parameter: ${circleParameter(radius)}");
      break;
    case 7:
      print("Enter first word:");
      var a = stdin.readLineSync()!;
      print("Enter second word:");
      var b = stdin.readLineSync()!;
      print("Enter third word:");
      var c = stdin.readLineSync()!;
      print("Combined Words: ${combineWord(a, b, c)}");
      break;
    case 8:
      print("Enter radius:");
      var radius = int.parse(stdin.readLineSync()!);
      print("Enter height:");
      var height = int.parse(stdin.readLineSync()!);
      print("Cylinder Volume: ${cylinderVolume(radius, height)}");
      break;
    case 9:
      print("Enter a word:");
      var word = stdin.readLineSync()!;
      print("Result: ${isPalindrome(word)}");
      break;
    case 10:
      print("Enter a number:");
      var number = int.parse(stdin.readLineSync()!);
      print("Factors:");
      listFactor(number);
      break;
    default:
      print("Invalid choice");
  }
}

// luas persegi
int squareArea(int side) {
  return side * side;
}

//keliling persegi
int squarePerimeter(int side) {
  return side * 4;
}

//luas persegi panjang
int rectangleArea(int width, int length) {
  return width * length;
}

//keliling persegi panjang
int rectanglePerimeter(int width, int length) {
  return ((width + length) * 2);
}

//luas lingkaran
double circleArea(int radius) {
  return radius * radius * math.pi;
}

//keliling lingkaran
double circleParameter(int radius) {
  return radius * 2 * math.pi;
}

//gabungan 3 string
String combineWord(String a, String b, String c) {
  return a + b + c;
}

//volume silinder
double cylinderVolume(int radius, int height) {
  return radius * radius * height * math.pi;
}

//cek palindrom
String isPalindrome(String word) {
  word = word.replaceAll(' ', '');
  for (int i = 0; i < word.length ~/ 2; i++) {
    if (word[i] != word[word.length - i - 1]) return 'bukan palindrom';
  }
  return 'palindrom';
}

//faktor dari bilangan
void listFactor(int number) {
  for (var i = 1; i <= number / 2; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}
