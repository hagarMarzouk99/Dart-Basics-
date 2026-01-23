import 'dart:io';
void main(){
  print('enter step to rotate:');
  int step = int.parse(stdin.readLineSync()!);
  if(step <= 0){
    print('step must be positive');
    return;
  }
  rotateListFunc(readList(), step);
}



// function to rotate list to right 
void rotateListFunc (List <int> numbers , int stepRotate){
 
  List <int> tempList = [];
  int j = 0;
     
    if(stepRotate < numbers.length){
    for(int i = 0 ; i < numbers.length - stepRotate ; i++){
       tempList.add(numbers[i]);
     }
    for(int i = stepRotate ; i >= 1 ; i--){
     numbers[j] =  numbers[numbers.length - i ];
     j++;
  }
  numbers.replaceRange(stepRotate, numbers.length , tempList);
  print('rotate list :$numbers');
    }
    else{
      print('step must be < length of list');
      return;
    }
 
}

 // function to read item of list 
 List <int> readList (){
  print('enter length of list:');
  int length = int.parse(stdin.readLineSync()!);
  List <int> numbers = [];
  print('enter items of list');
  for (int i = 0 ; i < length ; i++){
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  return numbers;

 }
 