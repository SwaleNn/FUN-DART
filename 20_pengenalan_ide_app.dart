void main() {
  // Membuat objek persegiPanjang dengan sisi 8 dan panjang 10
  var a = persegiPanjang(sisi: 8, panjang: 10); 
  // Menghitung dan mencetak luas persegi
  a.LuasPersegi();
  // Menghitung dan mencetak luas persegi panjang
  a.LuasPersegiPanjang();
}

// Class abstrak yang mendefinisikan blueprint untuk bentuk geometri
abstract class shape {
  // Metode abstrak untuk menghitung luas persegi
  void LuasPersegi();

  // Metode abstrak untuk menghitung luas persegi panjang
  void LuasPersegiPanjang();
}

// Class persegiPanjang yang mewarisi class shape
class persegiPanjang extends shape {
  // Variabel final untuk menyimpan nilai sisi persegi panjang
  final int sisi;
  // Variabel final untuk menyimpan nilai panjang persegi panjang
  final int panjang;

  // Konstruktor class persegiPanjang, menerima sisi dan panjang
  persegiPanjang({required this.sisi, required this.panjang});

  // Implementasi metode LuasPersegi() yang meng-override metode abstrak dari class shape
  @override
  void LuasPersegi() {
    // Menghitung luas persegi
    var Luas = sisi * sisi;
    // Mencetak hasil luas persegi
    print("Luas persegi adalah $Luas");
  }

  // Implementasi metode LuasPersegiPanjang() yang meng-override metode abstrak dari class shape
  @override
  void LuasPersegiPanjang() {
    // Menghitung luas persegi panjang
    var Luas = (sisi * panjang) * 3;
    // Mencetak hasil luas persegi panjang
    print("Luas persegi panjang adalah $Luas");
  }
}