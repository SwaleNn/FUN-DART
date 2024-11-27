import 'dart:io';

void main() {
  print("Start Program");
  cooldown();
  print("End Program");
}

void cooldown() {
  for (var i = 0; i < 5; i++) {
    print("waiting program $i");
    sleep(Duration(seconds: 2));
  }
}

// Kode ini bersifat synchronous, artinya setiap baris kode dijalankan secara berurutan, satu per satu