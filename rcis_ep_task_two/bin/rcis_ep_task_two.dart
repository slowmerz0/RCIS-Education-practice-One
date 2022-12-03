import 'dart:io';
import 'dart:math';
// ........................................................2.1zad..............................................
// void main() {
//   int a = 300;
//   List<int> mass = List.filled(100, 0);
//   for (int i = 0; i < mass.length; i++) {
//     mass[i] = a - 3;
//     a -= 3;
//   }
//   print(mass);
// }
// ............................................................................................................

// ........................................................2.2zad..............................................
// void main() {
//   int a = 1;
//   List<int> mass = List.filled(100, 0);
//   for (int i = 0; i < mass.length; i++) {
//     mass[0] = 1;
//     mass[i] = a;
//     a += 2;
//   }
//   print(mass);
// }
// ............................................................................................................

// ........................................................2.3zad..............................................
// void main() {
//   List<List<int>> nums = List.generate(10, (_) => List.generate(10, (_) => 0));
//   for (int i = 0; i < nums.length; i++) {
//     for (int j = 0; j < nums.length; j++) {
//       if (j == 0 || i == 0) {
//         nums[i][j] = 1;
//       } else {
//         nums[i][j] = nums[i - 1][j] + nums[i][j - 1];
//       }
//       stdout.write('${nums[i][j]}\t ');
//     }
//     stdout.write('\n');
//   }
// }
// ............................................................................................................

// ........................................................2.4zad..............................................
// void main() {
//   List<List<int>> temperature = List.generate(
//       12, (_) => List.generate((30), (_) => Random().nextInt(24) - 5));
//   for (int i = 0; i < temperature.length; i++) {
//     stdout.write('${i + 1} месяц \t');
//     for (int j = 0; j < temperature[i].length; j++) {
//       stdout.write('${temperature[i][j]}  ');
//     }
//     print('\n');
//   }
//   List<int> res = Avg(temperature);
//   res.sort();
//   print(res);
// }

// List<int> Avg(List<List<int>> temperature) {
//   List<int> avg = [];
//   for (int i = 0; i < temperature.length; i++) {
//     int sum = 0;
//     for (int j = 0; j < temperature[i].length; j++) {
//       sum += temperature[i][j];
//     }
//     avg.add(sum ~/ temperature[i].length);
//   }
//   return avg;
// }
// ............................................................................................................

// ........................................................2.5zad..............................................
// void main() {
//   int i = 0;
//   var temperature = List.generate(
//       12, (i) => List.generate((30), (j) => Random().nextInt(24) - 5));
//   var map = {
//     'Январь': temperature[i],
//     "Февраль": temperature[i + 1],
//     'Март': temperature[i + 2],
//     'Апрель': temperature[i + 3],
//     'Май': temperature[i + 4],
//     'Июнь': temperature[i + 5],
//     'Июль': temperature[i + 6],
//     'Август': temperature[i + 7],
//     'Сентябрь': temperature[i + 8],
//     'Октябрь': temperature[i + 9],
//     'Ноябрь': temperature[i + 10],
//     'Декабрь': temperature[i + 11]
//   };
//   var otvet = Avg(map, temperature);
//   for (var item in otvet.entries) {
//     print("${item.key} - ${item.value}");
//   }
// }

// Map Avg(map, res) {
//   var otvet = {
//     'Январь': 0,
//     "Февраль": 0,
//     'Март': 0,
//     'Апрель': 0,
//     'Май': 0,
//     'Июнь': 0,
//     'Июль': 0,
//     'Август': 0,
//     'Сентябрь': 0,
//     'Октябрь': 0,
//     'Ноябрь': 0,
//     'Декабрь': 0
//   };
//   for (var key in map.keys) {
//     double sum = 0;
//     for (int i = 0; i < 30; i++) {
//       sum += map[key][i];
//     }
//     otvet[key] = (sum ~/ 30);
//   }
//   return otvet;
// }
// ............................................................................................................