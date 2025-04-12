// Void tidak ada return
// function yang tidak memiliki void memiliki return

// function
import 'anjing.dart';
import 'bird.dart';
import 'cart.dart';
import 'human.dart';

void sum(num a, num b) {
  num c = a + b;
  print(c);
}

num funDivide(num a, num b) {
  return a / b;
}

void main() {
  // Variable staticly type
  // type inferance variable akan mengikuti  tipe data  dari value
  var name = 'Hello world';

  // Variable with type data
  String fullname = 'Fahriz Dimasqy';
  int age = 24;

  // tipe data number yang bisa diberi , jadi berlaku bilangan bulat & decimal
  num weight = 65;
  num minusDigit = -55;
  // double meski bilangan bulat akan menghasilkan decimal
  double height = 165.5;

  // list
  List<String> fruits = ["Apple", "Melon", "Semangka"];
  print(name);
  print(fullname);
  print(age);
  print(fruits);

  // Tipe data dynamic bisa tipe data semuanya
  List<dynamic> all = ["Apple", "Melon", "Semangka", 12, false];

  // Map object
  Map person = {name: 'Fahriz', age: 24};

  // final
  // bisa di deklrasaikan tanpa value, jika sudah diberikan value baru tidak bisa dirubah valuenya
  final String oldName;
  oldName = 'Angeline';

  // const
  // wajib langsung diberi value
  const double phi = 3.14;

  // String expression String Interpolation, tipe apapun bisa ditampilkan dengan menggunakan $ dijadikan string

  print('hallo nama aku $fullname dan umur ku $age');

  print("berat badan saya $weight");
  print("tinggi badan saya adalah $height");
  print("saya rubah jadi positif ${minusDigit.abs()}");
  print(all);
  print(person[name]);
  print(oldName);
  print(phi);

  // penggunakan function void
  sum(5, 5);
  // penggunakan tidak menggunakan void
  num result = funDivide(10, 2);
  print(result);

// Tray Catch
  try {
    int number = int.parse("123a");
    print(number);
  } on FormatException {
    print('gagal parse');
  } catch (e) {
    print(e);
  }

  // Collection
  // variable bisa menyimpan banyak data
  List<String> motor = ["ADV", 'NMAX', 'PCX', "VARIO"];
  print(motor);
  for (var i = 0; i < motor.length; i++) {
    print('motor ke ${i + 1} : ${motor[i]}');
  }

  int i = 0;
  motor.forEach((element) {
    // print(element);
    print('motor ke ${i + 1} : ${element}');
    i++;
  });

  int index = 0;

  for (String item in motor) {
    print('motor ke ${index + 1} : $item');
    index++;
  }

  // SET
  // bisa menggabungkan data sesama set tanpa duplicate atau union
  Set kkm = {75, 70, 60};
  Set avarage = {10, 60, 85, 70, 75};
  print(kkm.elementAt(1));
  print(avarage.union(kkm));

  // MAP
  // mempunya key dan value
  Map<String, dynamic> girlFriend = {
    "name": 'Angel',
    "age": 22,
  };
  print(girlFriend["name"]);

  // Spread Collection
  // spread collection meng extract list menjadi satuan
  // berlaku hanya untuk list dan set
  List copyData = [...motor, 'Beat'];
  print(copyData);

  belajarNullSafty();
  var fahriz = Human(nama: 'Fahriz', age: 12);
  // change name
  // using setter
  fahriz.setWeight = 65;
  print(fahriz.nama);
  // using getter
  print(fahriz.getWeight);

  print("kucing");
  print("==========");
  var myCat = Cat(jumlahKaki: 2, berat: 12);
  myCat.setLari = 12;
  print(
      'kucing ${myCat.nama} kecepatan lari ${myCat.getLari} ms berat${myCat.getBerat} kg');
  print("makan 1kg");
  myCat.setBerat = 13;
  print("berat naik jadi ${myCat.getBerat} kg");

  print("Anjing");
  print("==========");
  var myDog = Anjing(jumlahKaki: 2, berat: 12);
  myDog.setLari = 25;
  myDog.setKecepatanRenang = 20;
  print(
      'kucing ${myDog.nama} kecepatan lari ${myDog.getLari} ms berat${myDog.getBerat} kg kecepatan renang : ${myDog.grtKecepatanRenang}');
  print("makan 1kg");
  myDog.setBerat = 13;

  print("berat naik jadi ${myCat.getBerat} kg");

  print('bird');
  print("==========");
  var myBird = Bird(jumlahKaki: 2, berat: 10);
  print(
      'burung ${myBird.nama} kecepatan terbang ${myBird.kecepatanTerbang} ms berat${myBird.getBerat} kg');
  print("makan 1kg");
  myCat.setBerat = 11;
  print("berat naik jadi ${myBird.getBerat} kg");

  orderCoffee('Kopi Susu');
}

void orderCoffee(String coffee) {
  print('Selamat Datang');
  makeCoffee(coffee);
}

void checkStocl() {}

void makeCoffee(String coffee) async {
  Future.delayed(
      Duration(seconds: 2), () => {print(' Membuat Kopi ${coffee} ')});
  print('Silahkan Tunggu Dibuat');
  print('Kopi selesai dibuat');
}

void belajarNullSafty() {
  // ? membolehkan varaible null
  //  ?? untuk handle condition null
  // ! data dipastikan tidak akan null
  // late sebelum di eksekusi data harus di inisialisi

  String? nama = getName();
  late String address;
  address = 'Bandung';
  print(address);
  // print(nama?.length ?? 'data adalah null');
  if (nama?.length == null) {
    print('Data Nama Tidak Ada');
  } else {
    print(nama!.length);
  }
  print(nama);
}

// method get
String? getName() {
  return 'Fahriz';
}
