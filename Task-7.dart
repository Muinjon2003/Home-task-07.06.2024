

void main() {
  List<int> a = [5, 10, 15, 20, 25];

  print('List of numbers: $a');

  int sum = a.reduce((value, element) => value + element);
  print('Sum of the numbers: $sum');

  int max = a.reduce((curr, next) => curr > next ? curr : next);
  print('Maximum value: $max');

  int min = a.reduce((curr, next) => curr < next ? curr : next);
  print('Minimum value: $min');
}
