void main() {
  executeProgram(); // Memanggil fungsi executeProgram() untuk memulai program
  print("Fetching user favorite movie"); // Menampilkan pesan ke konsol
}

/// Fungsi asynchronous yang menjalankan proses loading dan fetching film.
/// 
/// Fungsi ini menggunakan `async` dan `await` untuk menjalankan
/// tugas secara asynchronous.
void executeProgram() async {
  var loading = await loadingTheMovie(); // Menunggu fungsi loadingTheMovie() selesai dan menyimpan hasilnya di variabel loading
  print(loading); // Menampilkan pesan "Loading..." ke konsol
  await fetchTheMovie(); // Menunggu fungsi fetchTheMovie() selesai
}

/// Fungsi asynchronous yang mengembalikan film favorit pengguna setelah 1 detik.
/// 
/// Fungsi ini menggunakan `async` dan `await` untuk menunda
/// eksekusi program selama 1 detik menggunakan `Future.delayed()`.
Future<void> fetchTheMovie() async {
  await Future.delayed(const Duration(seconds: 1)); // Menunda eksekusi selama 1 detik
  return print("Imitation Game"); // Menampilkan pesan "Imitation Game" ke konsol
}

/// Fungsi asynchronous yang mengembalikan pesan loading setelah 2 detik.
/// 
/// Fungsi ini menggunakan `async` dan `await` untuk menunda
/// eksekusi program selama 2 detik menggunakan `Future.delayed()`.
Future<String> loadingTheMovie() async {
  await Future.delayed(const Duration(seconds: 2)); // Menunda eksekusi selama 2 detik
  return "Loading..."; // Mengembalikan pesan "Loading..."
}