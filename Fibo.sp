class Main{
  method int fibo(int n){
    if(n == 0){
      return 0;
    }
    if(n <= 2){
      return 1;
    }
    return fibo(n - 1) + fibo (n - 2);
  }

  method void main(){
    int prueba;
    print('n');print('u');print('m');print('e');print('r');print('o');println(':');
    prueba = iread();
    println(fibo(prueba));
  }
}
