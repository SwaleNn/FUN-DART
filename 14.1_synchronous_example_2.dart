import 'dart:io';

void main() {
  print("Please input your name:");

  String? name = stdin.readLineSync();
  print("selamat datang di clan Lenn $name");
}


//tanda ? pada String? itu seperti opsional.. bisa di input maupun tidak di input
//jika tidak di input maka akan diisi dengan null

// stdin: Ini adalah objek dari library dart:io yang merepresentasikan input standar (biasanya keyboard).
// readLineSync(): Metode ini membaca satu baris teks dari input standar (keyboard).
// String? name: Variabel name bertipe String? (opsional) yang akan menyimpan nama yang dimasukkan pengguna. ? menunjukkan bahwa variabel ini bisa bernilai null jika pengguna tidak memasukkan apa pun.