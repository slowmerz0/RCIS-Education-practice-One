// ........................................................4.1zad.............................................
// import 'dart:io';  

// void main() { 
//   stdout.write("введите число: ");
//   int num = 0;
//    int proiz = 1;
//   try{
//   num = int.parse(stdin.readLineSync()!);
//   }
//   catch(e){
//     print('Вы ввели не число!');
//     proiz = 0;
//   }  
//   for (int i = 1; i < num; i++) { 
//     if (i % 3 == 0) { 
//       proiz *= i; 
//     } 
//   } 
//   print("сумма - $proiz"); 
// }
// ............................................................................................................

// ........................................................4.2zad..............................................
// import 'dart:convert'; 
// import 'dart:io'; 
// import 'dart:async'; 
  
// void main() async { 
//   final file = File('numsTask2.txt'); 
//   String nums_txt = ""; 
//   Stream<String> lines = file 
//       .openRead() 
//       .transform(utf8.decoder)  
//       .transform(LineSplitter());  
//   try { 
//     await for (var line in lines) { 
//       nums_txt += line; 
//     } 
//   } catch (e) { 
//     print('Error: $e'); 
//   } 
  
//   List<double> nums = []; 
//   String num = ""; 
//   double res = 0; 
  
//   for (int i = 0; i < nums_txt.length; i++) { 
//     if (nums_txt[i] != ";") { 
//       num += nums_txt[i]; 
//     } 
//     if (nums_txt[i] == ";" || i + 1 == nums_txt.length) { 
//       try{
//       nums.add(double.parse(num)); 
//       }
//       catch(e) {
//         print('Error: $e');
//       }
//       num = ""; 
//     } 
//   } 
//   for (int i = 0; i < nums.length; i++) { 
//     if (nums[i] > 0) { 
//       res += nums[i]; 
//     } 
//     if (nums[i] == 0) { 
//       break; 
//     } 
//   } 
//   print("сумма - $res "); 
// } 
// ............................................................................................................

// ........................................................4.3zad..............................................
// import 'dart:convert'; 
// import 'dart:io'; 
// import 'dart:async'; 
  
// void main() async { 

//   final file = File('numsTask3.txt'); 
//   String numstxt = ""; 

//   Stream<String> lines = file 
//       .openRead() 
//       .transform(utf8.decoder)  
//       .transform(LineSplitter()); 
// try{ 
//     await for (var line in lines) { 
//       numstxt += line; 
//     } 
//   } catch (e) { 
//     print('Error: $e'); 
//   } 
//   List<int> nums = []; 
//   String num = ""; 
//   for (int i = 0; i < numstxt.length; i++) { 
//     if (numstxt[i] != ",") { 
//       num += numstxt[i]; 
//     } 
//     if (numstxt[i] == "," || i + 1 == numstxt.length) { 
//       try{
//       nums.add(int.parse(num)); 
//       }
//       catch(e){
//         print('Error: $e');
//       }
//       num = ""; 
//     } 
//   } 
//   int min = nums[0]; 
//   int max = nums[0]; 
//   for (int i = 1; i < nums.length; i++) { 
//     if (nums[i] == 0) { 
//       break; 
//     } 
//     if (nums[i] > max) { 
//       max = nums[i]; 
//     } 
//     if (nums[i] < min) { 
//       min = nums[i]; 
//     } 
//   } 
//   double res = max / min;
//   print('$max / $min = ' '$res'); 
// } 
// ............................................................................................................

// ........................................................4.4zad..............................................
// import 'dart:convert';
// import 'dart:io';
// import 'dart:async';

// void main() async {
//   final file = File('numsTask4.txt');
//   String numstxt = "";
//   Stream<String> lines =
//       file.openRead().transform(utf8.decoder).transform(LineSplitter());
//   try {
//     await for (var line in lines) {
//       numstxt += line;
//     }
//   } catch (e) {
//     print('Error: $e');
//   }
//   List<int> nums = [];
//   String num = "";

//   for (int i = 0; i < numstxt.length; i++) {
//     if (numstxt[i] != " ") {
//       num += numstxt[i];
//     }
//     if (numstxt[i] == " " || i + 1 == numstxt.length) {
//       try {
//         nums.add(int.parse(num));
//       } catch (e) {
//         print("Error: $e");
//       }
//       num = "";
//     }
//   }
//   int result = 0;
//   for (int i = 0; i < nums.length - 1; i++) {

//     if (nums[i] == nums[i + 1]) {
//       result++;

//     }

//   }
//   print(result);
// }
// ............................................................................................................

// ........................................................4.5zad..............................................
// import 'dart:io';  
// void main() { 
//   int x_left = -1; 
//   int x_right = 3; 
//   int y_left = -2; 
//   int y_right = 4; 
//   double b = 0;
//   double a = 0;
//   stdout.write("Введите А: "); 
//   try{
//   a = double.parse(stdin.readLineSync()!);
//   }catch(e){
//     print('введено не число!');
//   } 
//   stdout.write("Введите В: "); 
//    try{
//    b = double.parse(stdin.readLineSync()!); 
//   }catch(e){
//     print('введено не число!');
//   } 
//   if ((x_left < a && a < x_right) && (y_left < b && b < y_right)) { 
//     print("Точка ($a : $b) входит в заданную область."); 
//   } else { 
//     print("Точка ($a : $b) не входит в заданную область."); 
//   } 
// } 
// ............................................................................................................

// ........................................................4.6zad..............................................
// import 'dart:io';

// void main() {
//   int x1 = -2;
//   int x2 = 0;
//   int x3 = 2;
//   int y1 = -3;
//   int y2 = 2;
//   int y3 = -3;
//   double x0 = 0;
//   double y0 = 0;
//   stdout.write("Введите A (x): ");
//   try{
//   x0 = double.parse(stdin.readLineSync()!);
//   }catch(e){
//     print(' вы ввели не число!');
//   }
//   stdout.write("Введите B (y): ");
//   try{
//   y0 = double.parse(stdin.readLineSync()!);
//   }catch(e){
//     print('Вы ввели не число!');
//   }
//   double a = (x1 - x0) * (y2 - y1) - (x2 - x1) * (y1 - y0);
//   double b = (x2 - x0) * (y3 - y2) - (x3 - x2) * (y2 - y0);
//   double c = (x3 - x0) * (y1 - y3) - (x1 - x3) * (y3 - y0);

//   if ((a >= 0 && b >= 0 && c >= 0) || (a <= 0 && b <= 0 && c <= 0)) {
//     print("Точка ($x0 : $y0) входит в заданную область.");
//   } else {
//     print("Точка ($x0 : $y0) не входит в заданную область.");
//   }
// }
// ............................................................................................................
