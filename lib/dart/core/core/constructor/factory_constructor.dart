void main() {
  Subject math = Maths('math');
  Subject mathFromName = Subject.fromName('math');
  Subject physicsFromName = Subject.fromNameUsingFactory('physics');

  print(math);
  print(mathFromName);
  print(physicsFromName);
}

class Subject {
  final String name;

  Subject(this.name);

  Subject.fromName(this.name);

  factory Subject.fromNameUsingFactory(String sName) {
    if (sName == 'math') {
      return Maths(sName);
    }
    return Physics(sName);
  }
}

class Maths extends Subject {
  Maths(String name) : super(name);
}

class Physics extends Subject {
  Physics(String name) : super(name);
}
