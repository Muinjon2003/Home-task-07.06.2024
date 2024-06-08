import 'dart:io';
void main() {
  stdout.write('How many Fibonacci numbers would you like to generate? ');
  String? input = stdin.readLineSync();
  
  if (input != null && int.tryParse(input) != null) {
    int cnt = int.parse(input);
    List<int> fibNum = generateFibonacci(cnt);
    print('The first $cnt Fibonacci numbers are: $fibNum');
  } else {
    print('Please enter a valid integer.');
  }
}

List<int> generateFibonacci(int cnt) {
  List<int> sum = [0, 1];
  
  if (cnt <= 0) {
    return [];
  } else if (cnt == 1) {
    return [0];
  }
  
  while (sum.length < cnt) {
    int nextValue = sum[sum.length - 1] + sum[sum.length - 2];
    sum.add(nextValue);
  }
  
  return sum.take(cnt).toList();
}