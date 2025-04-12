import 'hewan.dart';
import 'mixin/renang.dart';

class Bird extends Hewan with Renang {
  int jumlahKaki;
  int? kecepatanTerbang;
  Bird({required this.jumlahKaki, this.kecepatanTerbang, required berat})
      : super(nama: 'Burung', category: 'Laut', berat: berat);
}
