import 'dart:io';
// =========================== functions of (Frequency Counter) =====================
// function to read items of list from user 
List <int> inputList (){
  List<int> numbers =[];
  print("Enter length of list:");
  int length = int.parse(stdin.readLineSync()!);
  print("Enter items of list:");
  for(int i = 0 ; i < length ; i++){
    numbers.add(int.parse(stdin.readLineSync()!));
  }
  return numbers;
}
// function to count repeat elements 
void countRepeatFunc(List<int>numbers){
   List numbersWithoutRepeat = []; // item without repeating 
  int count = 0;
  print('item => his Repetition');
 for(int i = 0 ; i < numbers.length ; i++){  // nested loop 
  int item = numbers[i];
  if (numbersWithoutRepeat.contains(numbers[i])){
    continue;
  }
  for(int j = 0 ; j < numbers.length ; j++){
    if(item == numbers[j]){
      count++;
    }
  }
   print("${item} => $count");
   numbersWithoutRepeat.add(item);
    count = 0;
 }
}

 


//  main function 
void main(){
 
  print("**************** Frequency Counter **********************\n");
   List<int> numbers= inputList(); // read element from user
  countRepeatFunc(numbers); 
 
 

  }
  