import 'dart:io';

void main() {
 print("Enter any text :");
 
  String text = stdin.readLineSync()!;
  text = text.trim();
 List<String> words = text.split(" ");
 int maxLength= words[0].length;
 String longestWord = words[0];
 for(int i = 0 ; i <words.length; i++){
  if(words[i].length > maxLength){
    maxLength = words[i].length;
    longestWord = words[i];
  }

 }
 print('\nlongest word is: $longestWord');
 
}
