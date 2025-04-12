import 'hewan.dart';
import 'mixin/lari.dart';
import 'mixin/renang.dart';

class Anjing extends Hewan with Lari, Renang {
  int jumlahKaki;

  Anjing({required this.jumlahKaki, required berat})
      : super(nama: 'Anjing', category: 'Buldog', berat: berat);
}
