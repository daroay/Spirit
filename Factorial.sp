class Factorial{

  method int classFactorial(int n){
    int aux;
    aux = n;
    while(n > 1){
      n = n - 1;
      aux = aux * n;
    }
    return aux;
  }

}

class Main{

  method int dynamicFactorial(int n){
    int [10] a;
    int i;
    int j;
    a [0] = 1;
    i = 1;
    while(i <= n){
      a [i] = i * a [i - 1];
      i = i + 1;
    }
    return a [n];
  }
  
  method int recursiveFactorial(int n){
    if(n <= 1){
      return 1;
    }
    return n * recursiveFactorial(n - 1);
  }

  method void main(){
    Factorial f;
    f = new Factorial();
    println(dynamicFactorial(4));
    println(recursiveFactorial(4));
    println(f.classFactorial(4));
  }

}
