import 'dart:math';
import 'dart:io';

// ........................................................3.2zad..............................................
void main() {
  String nums = '';
  String otvet = '';
  File('nums.txt').readAsString().then((String a) {
    for (int j = 0; j < a.length; j++) {
      for (int i = 0; i < a[j].length; i++) {
        if (a[j][i] != " ") {
          nums += a[j][i];
        }
        if (a[j][i] == " ") {
          try {
            if (int.parse(nums) % 2 != 0) {
              otvet += "$nums ";
            }
            nums = "";
          } catch (e) {
            print('это не число');
            continue;
          }
        }
      }
      var cursed = File('nums.txt').writeAsString(otvet);
    }
  });
}
// ............................................................................................................

