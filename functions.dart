// Task 1
int addTwo(int num1, int num2) {
  return num1 + num2;
}

// Task 2
int subtractTwo(int num1, int num2) {
  return num1 - num2;
}

// Task 3
int multiplyTwo(int num1, int num2) {
  return num1 * num2;
}

// Task 4
double divideTwo(int num1, int num2) {
  return num1 / num2;
}

// Task 5
int stringLength(String text) {
  return text.length;
}

dynamic getFirstElement(List list) {
  if (list.isNotEmpty) {
    return list[0];
  }
}

// Testing the functions
void main() {
  print(addTwo(3, 5)); // Output: 8.0
  print(subtractTwo(7, 4)); // Output: 3.0
  print(multiplyTwo(2, 6)); // Output: 12.0
  print(divideTwo(4, 2)); // Output 2.0

  String myString = 'welcome home';
  print("Length of '$myString': ${stringLength(myString)}");

  List<int> myList = [1, 2, 3, 4, 5];
  print("First element of the list: ${getFirstElement(myList)}");
}
