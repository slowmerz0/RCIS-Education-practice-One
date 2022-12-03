import 'dart:io';
import 'dart:math';
// ........................................................1.1zad.............................................
// void main() {
//   List<int> mass = List.generate(10, (i) => Random().nextInt(100));
//   int min = 0;
//   for (int i = 1; i < mass.length; i++) {
//     if (mass[i] < mass[min]) {
//       min = i;
//     }
//   }
//   print(mass);
//   print(min);
// }
// ............................................................................................................

// ........................................................1.2zad..............................................
// void main() {
//   List<int> mass = [];
//   int num = 1;
//   int sum = 0;
//   int proizved = 1;
//   int a = 0;
//   while (num != 0) {
//     stdout.write('Введите число: ');
//     try {
//       a = int.parse(stdin.readLineSync()!);
//     } catch (e) {
//       print('Вы не ввели число');
//       continue;
//     }
//     mass.add(a);
//     if (mass[0] == 0) {
//       proizved = 0;
//     }
//     if (a == 0) {
//       break;
//     } else {
//       sum += a;
//       proizved *= a;
//     }
//   }
//   double sred = sum / (mass.length);
//   print(mass);
//   stdout.write('$sum - сумма \n$proizved - произведение \n$sred - среднее');
// }
// ............................................................................................................

// ........................................................1.3zad..............................................
// void main() {
//   int max = 0;
//   int min = 0;
//   List<String> a = mass();

//   for (int i = 1; i < a.length; i++) {
//     if (a[min].length > a[i].length) {
//       min = i;
//     }
//     if (a[max].length < a[i].length) {
//       max = i;
//     }
//   }
//   stdout.write('$a\n MAX - [$max]\t${a[max]}\n MIN - [$min]\t${a[min]}');
// }

// List<String> mass() {
//   int inf = 1;
//   List<String> array = [];
//   while (inf != 0) {
//     stdout.write('Введите элемент массива: ');
//     String text = stdin.readLineSync()!;
//     if (text == '') {
//       break;
//     }
//     array.add(text);
//   }
//   return array;
// }
// ............................................................................................................

// ........................................................1.4zad..............................................
// void main() {
//   try {
//     stdout.write('введите минимальный порог: ');
//     int min = int.parse(stdin.readLineSync()!);
//     stdout.write('введите максимальный порог: ');
//     int max = int.parse(stdin.readLineSync()!);
//     List<int> nums = randMass(min, max);
//     stdout.write('/');
//     for (int i = 0; i < nums.length; i++) {
//       stdout.write('${nums[i]} ');
//     }
//     stdout.write('/');
//   } catch (error) {
//     print('вы ввели не число!!!');
//   }
// }

// List<int> randMass(int min, int max) {
//   List<int> rand = List.generate(10, (_) => Random().nextInt(max - min) + min);
//   return rand;
// }
// ............................................................................................................

// ........................................................1.5zad..............................................
// void main() {
//   stdout.write('Введите строку: ');
//   String a = stdin.readLineSync()!;
//   int word = 1;
//   for (int i = 0; i < a.length; i++) {
//     if (a[i] == ' ') {
//       word++;
//     }
//   }
//   if (a == '') {
//     word = 0;
//   }
//   stdout.write('Start - $word END');
// }
// ............................................................................................................

