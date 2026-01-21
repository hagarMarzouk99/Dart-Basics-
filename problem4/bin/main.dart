import 'dart:io';
void main(){
  print('enter length of list :');
  int length = int.parse(stdin.readLineSync()!);
  print("enter list if integer");
  List <int> number =[];
  for(int i = 0 ; i <length ; i++){
     number.add(int.parse(stdin.readLineSync()!));
  }
  deleteRepeatFunc(number);


}

// funvtion to remove dublicate element
void deleteRepeatFunc(List<int>numbers){
   List numbersWithoutRepeat = []; // item without repeating 
  int count = 0;
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
   numbersWithoutRepeat.add(item);
    count = 0;
 }
 
 print( 'List Without Dublication :  ${numbersWithoutRepeat}');
 
 }