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

}

class Main {
  method void main() {
    Person p;
    int [50] arreglo;
    int i;
    p = new Person();
    i = 0;
    while(i < 50 + 20 + 1) {
      arreglo [i] = i;
    }
    n.setAge(12);
    n.ssn = 20;
    n.ssn = readint();
    n.setAge(readint());
  }
}
