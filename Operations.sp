class Persona {

  int in_var;

  method void edad(){
    in_var = 10;
    return;
  }

  method void nombre(){
    int x;
    x = 60;
    edad();
  }

}

class Nodo{

  int content;
  Nodo next;
  
  method void setNext(Nodo next){
    this.next = next;
  }
  
  method Nodo getNext(){
    return this.next;
  }
  
  method void setContent(int content){
    this.content = content;
  }
  
  method int getContent(){
    return this.content;
  }

}

class Main {

  float c;
  c = 30.0;
  

  method Persona suma(int a, int b){
    int c;
    Persona p;
    c = a + b;
    return p;
  }
  
  
  method float divide(int a, int b){
    int c;
    this.c = a / b;
    return this.c;
  }

  method void main() {
    Nodo head;
    Nodo n;
    Nodo next;
    int i;
    head = new Nodo();
    n = head;
    i = 0;
    while(i < 10){
      next = new Nodo();
      n.setContent(i);
      n.setNext(next);
      n = n.getNext();
    }
  }
  
}
