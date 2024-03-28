import 'dart:io';

//define an interface
abstract class Animal {
  void makeSound();
}

//base class implementing the animal
class Mammal implements Animal {
  @override
  void makeSound() {
    print('Mammal makes a sound');
  }
}

//subclass that overrides makesound
class Dog extends Mammal {
  @override
  void makeSound() {
    print('Dog barks');
  }

  void fetch() {
    print('Dog fetches the ball');
  }
}

//class initialized with data from file

class Zoo {
  List<Animal> animals = [];

  Zoo(String filename) {
    File(filename).readAsLinesSync().forEach((line) {
      if (line == 'Dog') {
        animals.add(Dog());
      } else {
        animals.add(Mammal());
      }
    });
  }

  void showAnimals() {
    for (var animal in animals) {
      animal.makeSound();
    }
  }
}

void main() {
  //Demonstrate inheritance and overriding
  Dog myDog = Dog();
  myDog.makeSound();
  myDog.fetch();

  //Demonstrate class initialized with the data from a file
  Zoo myZoo = Zoo('animals.txt');
  myZoo.showAnimals();

  //Demonstrate the use of a loop
  for (int i = 0; i < 3; i++) {
    print('Loop iteration $i');
  }
}
