import 'hewan.dart';
import 'mixin/lari.dart';

class Cat extends Hewan with Lari {
  int jumlahKaki;

  Cat({required this.jumlahKaki, required int berat})
      : super(nama: 'Mimin', category: 'Persia', berat: berat);
}
