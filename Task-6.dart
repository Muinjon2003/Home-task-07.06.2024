import 'dart:io';
import 'dart:math';



void main() {
  var random = Random();
  int randomNumber = random.nextInt(100) + 1;

  print('Guess a number between 1 and 100:');
  while (true) {
    String? input = stdin.readLineSync();
    if (input != null) {
      int guess = int.parse(input);

      if (guess < randomNumber) {
        print('Too low! Try again:');
      } else if (guess > randomNumber) {
        print('Too high! Try again:');
      } else {
        print('Exactly right! The number was $randomNumber.');
        break;
      }
    } else {
      print('Please enter a valid number.');
    }
  }
}
