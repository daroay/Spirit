class Person extends Animal{

  float age;
  int ssn;

  method void Person(float age, int ssn){
    this.age = age;
    this.ssn = ssn;
  }

  method void setAge(float a) {
    this.age = a;
  }
  
  method float getAge() {
    return age;
  }
  
  method int getSsn() {
    return ssn;
  }

}

class Main {
  method void main() {
    Person n;
    n = new Person();
    n.Person(5.7, 12324242);
    print('i');print('n');print('s');print('e');print('r');print('t');print(' ');
    print('n');print('u');print('m');print('b');print('e');println('r');
    n.setAge(fread());
    println(n.getAge());
    println(n.getSsn());
  }
}
