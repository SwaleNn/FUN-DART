void main() {
  // Memanggil fungsi numDivideByZero dengan nilai 10 dan 2
  // Hasil pembagian (10 / 2) disimpan dalam variabel value
  var value = numDivideByZero(10, 2);
  print(value); // Mencetak nilai value (5) ke konsol

  // Memanggil fungsi numDivideByZero dengan nilai 10 dan 0
  // Akan terjadi error karena pembagian dengan nol
  var value2 = numDivideByZero(10, 0);
  print(
      value2); // Tidak akan pernah mencapai baris ini karena program akan berhenti
}

/// Fungsi yang melakukan pembagian dua bilangan integer.
///
/// Fungsi ini akan mengembalikan hasil pembagian jika pembagi tidak nol.
/// Jika pembagi nol, fungsi ini akan melempar Exception.
num numDivideByZero(int value, int divider) {
  // Memeriksa apakah divider bernilai 0
  if (divider == 0) {
    // Melempar Exception jika divider bernilai 0
    throw Exception("Can't divide by zero");
  } else {
    // Mengembalikan hasil pembagian jika divider tidak nol
    return value / divider;
  }
}
