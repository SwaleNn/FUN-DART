void main() {
  // Memanggil fungsi fecthTheMovie()
  fecthTheMovie();

  // Mencetak teks "Fetching user favorite movie..." ke konsol
  print("Fetching user favorite movie...");
}

// Fungsi asinkron yang mengembalikan Future<void>
Future<void> fecthTheMovie() {
  // Mensimulasikan pengambilan data dari server selama 2 detik
  return Future.delayed(Duration(seconds: 2))
      // Setelah penundaan, mencetak "Imitation Game" ke konsol
      .then((_) => print("Imitation Game"));
}
