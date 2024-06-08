import 'dart:io';
import 'dart:math';



void main() {
  playCowsAndBulls();
}

void playCowsAndBulls() {
  final random = Random();
  final secretNumber = List.generate(4, (_) => random.nextInt(10)).join();
  int attempts = 0;

  print('Welcome to the Cows and Bulls game!');
  print('I have generated a 4-digit number. Try to guess it!');

  while (true) {
    stdout.write('Enter your guess: ');
    String? userGuess = stdin.readLineSync();
    
    if (userGuess == null || userGuess.length != 4 || !RegExp(r'^\d{4}$').hasMatch(userGuess)) {
      print('Invalid input. Please enter a 4-digit number.');
      continue;
    }

    attempts++;

    if (userGuess == secretNumber) {
      print('Congratulations! You guessed the correct number: $secretNumber');
      print('It took you $attempts guesses.');
      break;
    } else {
      int cows = 0;
      int bulls = 0;

      for (int i = 0; i < 4; i++) {
        if (userGuess[i] == secretNumber[i]) {
          cows++;
        } else if (secretNumber.contains(userGuess[i])) {
          bulls++;
        }
      }

      print('Cows: $cows, Bulls: $bulls');
    }
  }
}
