import 'dart:io';
void main(){
  String password = stdin.readLineSync()!;
  bool isContainNumber = false ;
  bool isContainCharacter = false;
  for(int i =0 ; i < password.length ; i++){
    int ch = password.codeUnitAt(i);
    if(ch >= 48 && ch <= 57 ){   // 0 = 48 in asciiz , 9 = 57 in asciiz
    isContainNumber = true;
  }
   if(ch >= 65 && ch <= 90 ){
    isContainCharacter = true;

   }
}
if(password.length >= 8 && isContainCharacter && isContainNumber){

 print("valid password");
}
else{
   print("not valid password");
}
}
/*
  if(password.length >= 8){
      if(ch >= 48 && ch <= 57 ){   // 0 = 48 in asciiz , 9 = 57 in asciiz
        if(ch >= 65 && ch <= 90 ){
          print("valid password");
        }
        */