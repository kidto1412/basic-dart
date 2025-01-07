// Void tidak ada return
// function yang tidak memiliki void memiliki return

// function

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
}
