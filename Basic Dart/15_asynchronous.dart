void main() {
  // Mencetak "Start Program" ke konsol
  print("Start Program");

  // Memanggil fungsi asynchronous()
  asynchronous();

  // Mencetak "end Program" ke konsol
  print("end Program");
}

// Fungsi asynchronous() yang menggunakan async/await
void asynchronous() async {
  // Loop for untuk menjalankan 6 kali (dari i=0 hingga i=5)
  for (var i = 0; i <= 5; i++) {
    // Mencetak teks "Asynchronous ke [nilai i]" ke konsol
    print("Asynchronous ke $i");

    // Menunggu selama 1 detik sebelum melanjutkan ke iterasi berikutnya
    await Future.delayed(Duration(seconds: 1)); 
  }
}