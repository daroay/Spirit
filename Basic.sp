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
    println(content);
  }
  
  method int getContent(){
    println(this.content);
    return content;
  }
}

class Main{

  method int fibo(int a){
    if(a <= 2){
      return 1;
    }
    return fibo(a - 1) + fibo(a - 2);
  }

  method void main(){
    int b;
    Node n;
    b = fibo(20);
    n = new Node();
    println(b);
  }

}
