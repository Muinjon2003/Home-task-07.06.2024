import 'dart:math';

void main() {
  var random = Random();
  var number = random.nextInt(100);
  print(number);

  for (int j = 1; j > 100; j++) {
    print(j);
    if (j >= 100) {
      print("Haight");
    }
     else if (j < 50) {
      print('Law');
    }
  }
  
  
}
