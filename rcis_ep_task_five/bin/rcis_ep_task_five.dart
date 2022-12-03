// ........................................................5.1zad.............................................
// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';

// void main() async {
//   final file = File('numsTask1.txt');
//   String nums_txt = "";
//   Stream<String> lines =
//       file.openRead().transform(utf8.decoder).transform(LineSplitter());
//   try {
//     await for (var line in lines) {
//       nums_txt += line;
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
//   List<int> nums = [];
//   String num = "";
//   for (int i = 0; i < nums_txt.length; i++) {
//     if (nums_txt[i] != " ") {
//       num += nums_txt[i];
//     }
//     if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
//       try {
//         nums.add(int.parse(num));
//       } catch (e) {
//         print('введено не число!');
//       }
//       num = "";
//     }
//   }
//   int min = nums[0];
//   int index = 0;
//   for(int i = 1; i < nums.length; i++){
//     if (nums[i] < min) { 
//       min = nums[i];
//       index = i; 
//     } 
//   }
//   int sum = 0;
//   for(int i = index + 1; i < nums.length; i++){
//     sum+= nums[i];
//   }
//   print("минимальное число - ${nums[index]} \n$sum - сумма");
// }
// ............................................................................................................

// ........................................................5.2zad.............................................
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
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
//   List<double> nums = [];
//   String num = "";
//   for (int i = 0; i < nums_txt.length; i++) {
//     if (nums_txt[i] != ";") {
//       num += nums_txt[i];
//     }
//     if (nums_txt[i] == ";" || i + 1 == nums_txt.length) {
//       try {
//         nums.add(double.parse(num));
//       } catch (e) {
//         print('введено не число!');
//       }
//       num = "";
//     }
//   }
// List<double> sorted = sort(nums);
//   String res = sorted.toString();
//    File out = await File('numsTask2.txt').writeAsString(res);
// }
// List<double> sort(List<double> nums){
//   double swap = 0;
//   for (int i = 0; i < nums.length - 1; i++){
//     for (int j = 0; j < nums.length - i - 1; j++){
//       if (nums[j] > nums[j + 1]){
//         swap = nums[j];
//         nums[j] = nums[j+1];
//         nums[j+1] = swap;
//         }
//     }
//   }
//   return nums;
// }
// ............................................................................................................

// ........................................................5.3zad.............................................
// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';

// void main() async {
//   final file = File('numsTask3.txt');
//   String nums_txt = "";
//   Stream<String> lines =
//       file.openRead().transform(utf8.decoder).transform(LineSplitter());
//   try {
//     await for (var line in lines) {
//       nums_txt += line;
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
//   List<int> nums = [];
//   String num = "";
//   for (int i = 0; i < nums_txt.length; i++) {
//     if (nums_txt[i] != " ") {
//       num += nums_txt[i];
//     }
//     if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
//       try {
//         nums.add(int.parse(num));
//       } catch (e) {
//         print('введено не число!');
//       }
//       num = "";
//     }
//   }
//   print(nums);
//   int min = 9999;
//   int index = 0;
//   for(int i = 0; i < nums.length; i++){
//      if (nums[i] < min) { 
//       min = nums[i];
//       index = i; 
//     }
//   }
//   int sum = 0;
//   for(int i = 0; i < index; i++){
//     sum += nums[i];
//   }
//   double avg = sum / index;
//   print("Cреднее значение чисел до ${nums[index]} = $avg");
// }
// ............................................................................................................

// ........................................................5.4zad.............................................
// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';

// void main() async {
//   final file = File('numsTask4.txt');
//   String nums_txt = "";
//   Stream<String> lines =
//       file.openRead().transform(utf8.decoder).transform(LineSplitter());
//   try {
//     await for (var line in lines) {
//       nums_txt += line;
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
//   List<int> nums = [];
//   String num = "";
//   for (int i = 0; i < nums_txt.length; i++) {
//     if (nums_txt[i] != " ") {
//       num += nums_txt[i];
//     }
//     if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
//       try {
//         nums.add(int.parse(num));
//       } catch (e) {
//         print('введено не число!');
//       }
//       num = "";
//     }
//   }
//   int max = nums[0];
//   for(int i = 1; i < nums.length; i++){
//     if (nums[i] > max) { 
//       max = nums[i];
//     } 
//   }
//   int sum = 0;
//   for(int i = 0; i<nums.length; i++){
//     if((nums[i] + 1) == max){
//       sum+=nums[i];
//     }
//   }
//   print("сумма чисел отличающихся от максимального на 1: $sum");
// }
// ............................................................................................................

// ........................................................5.5zad.............................................
// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';

// void main() async {
//   final file = File('numsTask5.txt');
//   String nums_txt = "";
//   Stream<String> lines =
//       file.openRead().transform(utf8.decoder).transform(LineSplitter());
//   try {
//     await for (var line in lines) {
//       nums_txt += line;
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
//   List<int> nums = [];
//   String num = "";
//   for (int i = 0; i < nums_txt.length; i++) {
//     if (nums_txt[i] != " ") {
//       num += nums_txt[i];
//     }
//     if (nums_txt[i] == " " || i + 1 == nums_txt.length) {
//       try {
//         nums.add(int.parse(num));
//       } catch (e) {
//         print('введено не число!');
//       }
//       num = "";
//     }
//   }
//   int index_max = 0;
//   int index_min = 0;
//   int min = nums[0];
//   int max = nums[0];
//   for(int i = 0; i< nums.length; i++){
//     if(min> nums[i]){
//       min = nums[i];
//       index_min = i;
//     }
//     if(max < nums[i]){
//       max = nums[i];
//       index_max = i;
//     }
//   }
//   int sum = 0;
//   if(index_min < index_max){
//   for(int i = index_min + 1; i < index_max; i++){
//     sum+= nums[i];
//   }
//   }
//   else{
//     for(int i = index_max + 1; i < index_min; i++){
//     sum+= nums[i];
//   }
//   }
//   int count = (index_max.abs() - index_min.abs()).abs() - 1;
//   double avg = sum / count;
//   print(nums);
//   print("среднее чисел расположенных между $min и $max = $avg");
// }
// ............................................................................................................


