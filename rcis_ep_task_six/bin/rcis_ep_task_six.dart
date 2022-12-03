// ........................................................6.1zad.............................................
// import 'dart:io';
// void main() {
//   try{
//   List<String> words = File('numsTask1.txt').readAsLinesSync();
//   for(var h in words){
//     words = h.split(' ');
//   }
//   int count = 0;
//   List<String> result = [];
//   for(int i = 0; i < words.length; i++){
//     count =  words[i].length;
//     if(count % 2  != 0){
//       result.add(words[i]);
//     }
//   }
//   print(result);
//   }
//   catch(e){
//     print('файл не найден!');
//   }
// }
// ............................................................................................................

// ........................................................6.2zad..............................................
// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';
// void main() async {
//   final file = File('numsTask2.txt');
//   String nums_txt = "";
//   Stream<String> lines =
//       file.openRead().transform(utf8.decoder).transform(LineSplitter());
//   try {
//     await for (var line in lines) {
//       nums_txt += line;
//       nums_txt+= ' ';
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
//   print(nums_txt);
// }
// .............................................................................................................

// ........................................................6.3zad...............................................
// import 'dart:io';
// void main()  {
//   int num = 0;
//   stdout.write("введите число: ");
//   try{num = int.parse(stdin.readLineSync()!);
//   }
//   catch(e){
//     print('вы ввели не число!');
//   }
//   bool result = isEven(num);
// if(result){
//   print('Число $num четное и делится на 10');
// }else{
//   print('число не подходит к данному требованию');
// }
// }
// bool isEven(int num){
//   if(num % 2 == 0 && num % 10 == 0){
//     return true;
//   }
//   else{
// return false;
//   }
// }
// .............................................................................................................

// ........................................................6.4zad...............................................
import 'dart:io';
void main()  {
  List<int> nums = [];
  int a = 0;
  while(1!= 0){
  stdout.write('введите число A: ');
  try{
  a = int.parse(stdin.readLineSync()!);
  }
  catch(e){
    print('вы ввели не число!');
    continue;
  }
  if(a < 0){
    continue;
  }
  else{
    break;
  }
  }
  while(1 != 0){
  stdout.write("введите число: ");
  int num = 0;
    try{
   num = int.parse(stdin.readLineSync()!);
  }
  catch(e){
    print('вы ввели не число!');
    continue;
  }
  if(num < 0){
    break;
  }else{
  nums.add(num);
  }
  }
  int sum = 0;
  for(int i = 0; i < nums.length; i++){
    if(nums[i] % a == 0){
      sum+= nums[i];
    }
  }
  print('сумма чисел кратных $a = $sum');
}
// .............................................................................................................

// ........................................................6.5zad...............................................
// import 'dart:io';
// import 'dart:math';
// void main()  {
//   stdout.write('введите n: ');
//   int n = 0;
//   int m = 0;
//   try{
//    n = int.parse(stdin.readLineSync()!);
//   }catch(e){
//     print('вы ввели не число!');
//   }
//   stdout.write('введите m: ');
//    try{
//    m = int.parse(stdin.readLineSync()!);
//   }catch(e){
//     print('вы ввели не число!');
//   }
//   List<List<int>> nums = List.generate(n, (index) => List.generate(m + 1, ((index) => Random().nextInt(2))));
//   for(int i = 0; i < n; i++){
//     int count = 0;
//     for(int j = 0; j < m; j++){
//       if(nums[i][j] == 1){
//         count++;
//       }
//     }
//     if(count % 2 != 0){
//       nums[i][m] = 1;
//     }else{
//       nums[i][m] = 0;
//     }
//   }
//   for(int i = 0; i < n; i++){
//     for(int j = 0; j < m + 1; j++){
//       stdout.write('${nums[i][j]} ');
//     }
//     print('');
//   }
// }
// .............................................................................................................

// ........................................................6.6zad...............................................
// import 'dart:math';
// void main()  {
//   List<double> positive = [];
//   List<double> neggative = [];
//   List<double> nums = List.generate(Random().nextInt(5) + 1, (index) => (Random().nextDouble() * (20) + -10));
//   for(int i = 0; i< nums.length; i++){
//     if(nums[i] < 0){
//       neggative.add(nums[i]);
//     }
//     else{
//       positive.add(nums[i]);
//     }
//   }
//   print(nums);
//   print('положительные числа - $positive');
//   print('отрицательные числа - $neggative');
// }
// .............................................................................................................
