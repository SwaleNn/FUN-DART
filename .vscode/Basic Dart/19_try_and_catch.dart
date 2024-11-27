void main() {
  // Memulai blok try untuk mencoba menjalankan kode yang mungkin menghasilkan error
  try {
    // Memanggil fungsi numDevideBy dengan nilai 9 dan 2
    // Hasil pembagian (9 / 2) disimpan dalam variabel result
    var result = numDevideBy(9, 2);
    print("Result : $result"); // Mencetak hasil pembagian (4.5) ke konsol
  } catch (e) {
    // Menangkap Exception (error) yang mungkin dilempar di dalam blok try
    print("Caught exception: $e"); // Mencetak pesan error yang ditangkap
  } finally {
    // Blok finally akan dieksekusi selalu, baik kode di dalam blok try berhasil atau tidak
    print("End program"); // Mencetak pesan "End program" ke konsol
  }
}

/// Fungsi yang melakukan pembagian dua bilangan integer.
/// 
/// Fungsi ini akan mengembalikan hasil pembagian jika pembagi tidak nol.
/// Jika pembagi nol, fungsi ini akan melempar Exception.
num numDevideBy(int value, int devider) {
  // Memeriksa apakah devider bernilai 0
  if (devider == 0) {
    // Melempar Exception jika devider bernilai 0
    throw Exception("Can't divide by zero");  
  } else {
    // Mengembalikan hasil pembagian jika devider tidak nol
    return value / devider; 
  }
}