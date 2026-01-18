void main(){
  print ('======== Part one (declare variable) ========');
  String StuName = "Hagar";
  int StuAge = 22;
  int StuGrade = 3 ;
  bool StuStatu = true;
  print('''
   My Name is $StuName 
   My age is $StuAge
   I'm in a $StuGrade grade 
   Is student grade:$StuStatu
  ''');
  //******************************************
  print ('======== Part two (sum number) ========');
  int num1 = 5;
  int num2 = 10;
  print("their sum is = ${num1+num2} ");
  print("their difference is = ${num1-num2} ");
  print("their multiplication is = ${num1*num2} \n");
   //******************************************
  print ('======== Part three (const & final ) ========');
const double pi =3.14; // No one can't change this value later
final double temperature  = 20; // we can change this value later
print("Value of const = $pi \nValue of final = $temperature \n");
   //******************************************
print ('======== last part (swapping) ========');
int y = 3;
int x = 5;
print("before swap: y =$y , x =$x");
int temp = x;
x = y ;
y = temp;
print("after swap: y =$y , x =$x");


}