void main(){
  print('============= (problem 1) ===============\n');
  List <String> students = ['Hagar','Noura','Aya','Mariam','Hala'];
  print('List before edit');
  print(students);
  students.add('Aml'); // add this item in the last , if we want add by index Using (insert & insert all)
  students.insert(0, 'mohammed');
  students.remove('Noura');
   print('List after edit');
  print(students);
  //**************************************************************************************************************
  print('\n============= (problem 2) ===============\n');
  List <int> numbers=[10,20,30,40,50, 60,80];
  int max = numbers.first;
  double sum = 0;
  for(int i = 0 ; i < numbers.length ; i++){
    if (max< numbers[i]){
      max = numbers[i];
    }
    sum += numbers[i];

  }
  print('the largest number is:$max \n');
  print('the average of numbers is:${sum/numbers.length}');


}