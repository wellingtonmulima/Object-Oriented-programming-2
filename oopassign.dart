class Student {
  String name;
  int age;
  String grade_level;

  Student(this.name, this.age, this.grade_level);

  void studentInfo() => print('$name,$age,$grade_level');
}

class Teacher {
  String name;
  int age;
  String subject_taught;

  Teacher(this.name, this.age, this.subject_taught);

  void teachersInfo() => print('$name,$age,$subject_taught');
}

// Define the School class
class School {
  void createObjects() {
    // Create a student object
    Student student = Student('Eladams', 10, '5th Grade');

    // Create a teacher object
    Teacher teacher = Teacher('Mr. Jacob', 35, 'Math');

    // Print student and teacher information
    student.studentInfo();
    teacher.teachersInfo();
  }
}

void main() {
  // Create an instance of the School class and call the createObjects method
  School school = School();
  school.createObjects();
}
