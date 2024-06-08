import 'dart:io';



void main() {
  String reverseWords(String input) {
    List<String> words = input.split(' ');
    List<String> reversedWords = words.reversed.toList();
    return reversedWords.join(' ');
  }

  print('Please enter a long string containing multiple words:');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    String reversedString = reverseWords(input);
    print('Reversed string: $reversedString');
  } else {
    print('No input provided.');
  }
}
