class Node{
  int content;
  Node next;
  
  method void setNext(Node next){
    this.next = next;
  }
  
  method Node getNext(){
    return next;
  }
  
  method void setContent(int c){
    content = c;
  }
  
  method int getContent(){
    return content;
  }
}

class Main{

  method void main(){
    Node one;
    Node two;
    Node aux;
    one = new Node();
    two = new Node();
    one.setContent(1);
    one.setNext(two);
    two.setContent(2);
    println(one.getContent());
    aux = one.getNext();
    println(aux.getContent());
  }

}
