// agar tidak bisa di inisialisasi object hewan nya langsung
abstract class Hewan {
  String? nama;
  String? category;
  int? _berat;

  Hewan({this.category, this.nama, int? berat});
  // setter
  set setBerat(int berat) {
    _berat = berat;
  }

  // getter
  get getBerat {
    return _berat;
  }
}
