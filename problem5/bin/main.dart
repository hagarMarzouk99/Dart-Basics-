import 'dart:io';
void main(){
  print('enter length of list :');
  int length = int.parse(stdin.readLineSync()!);
  print("enter item of list");
  List <int> number =[];
  for(int i = 0 ; i <length ; i++){
     number.add(int.parse(stdin.readLineSync()!));
  }
  print('enter order of max which you wanted :');
  int orderMax = int.parse(stdin.readLineSync()!);

  if(handleOrder(orderMax, length)){
    print('the second max number is : ${findMaxFunc(number, orderMax)}'); 
  }
  else{
    return;
  }

}


 // function to find nth order max of list 
int findMaxFunc(List<int> numbers, int orderOfMax) {
  if (orderOfMax == 1) {
    int max = numbers[0];
    for (int i = 1; i < numbers.length; i++) {
      if (numbers[i] > max) {
        max = numbers[i];
      }
    }
    return max;
  }

  int max = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  List<int> withoutPeriviousMax = List.from(numbers); // take copy from origin list
   withoutPeriviousMax.removeWhere((e) => e == max); // to remove all max if it repeated 
  return findMaxFunc(withoutPeriviousMax, orderOfMax - 1);
}


// function to handle orderOfIndex
 bool handleOrder(int order, int listLength) {
  if (order <= 0) {
    print('order must be greater than 0');
    return false;
  }

  if (order > listLength) {
    print('order is larger than list length');
    return false;
  }

  return true;  // vaild order
}
