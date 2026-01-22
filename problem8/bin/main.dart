import 'dart:io';
import 'dart:math';
void main(){

  print('enter number');
  int number = int.parse(stdin.readLineSync()!);

// first method
  print('result by best solution');
  checkPrimeBest(number);

// second method 
  print('result by optimized solution But professional');
checkPrimeOptimazation(number);

/* 
the basic difference between two method is ** Performance ** although giving same result ?!

  Using sqrt(n) reduces time complexity from O(n) to O(√n)
  which improves performance for large numbers


*/

}


// first function
void checkPrimeBest (int number){
  bool checkIsPrime = true;
  if(number <= 1){
    print('please enter number > 1\n');
    return;
  }
  else{
    for(int i = 2 ; i < (number / 2) ; i++){
      if(number % i == 0){
        checkIsPrime = false;
        break;
      }
    }
  }
  if(checkIsPrime){
    print('this number is prime\n');
  }
  else{
    print('this number is not prime\n');
  }
}

 

void checkPrimeOptimazation(int number) {
  if (number <= 1) {
    print('please enter number > 1\n');
    return;
  }
  bool checkIsPrime = true;

  for (int i = 2; i <= sqrt(number).toInt(); i++) {
    if (number % i == 0) {
      checkIsPrime = false;
      break;
    }
  }

  if (checkIsPrime) {
    print('this number is prime\n');
  } else {
    print('this number is not prime\n');
  }
}
