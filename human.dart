class Human {
  // attribue sebuah varaible yang ada di dialam class
  // public attribute / properti
  // String? nama;
  // int? age;

  String? nama;
  int? age;

  // private property
  double? _weight;

// constructor
// positional argument
  // Human(String nama, int age) {
  //   this.nama = nama;
  //   this.age = age;
  // }

// name constructor argument
  // Human({String? nama, int? age}) {
  //   this.nama = nama;
  //   this.age = age;
  // }

// short constructpr
  Human({this.nama, this.age, double? newWight}) {
    _weight = newWight;
  }
  // method
  // fucntion set
  // void setWeight(double weight) {
  //   this._weight = weight;
  // }

  // setter
  set setWeight(double? weight) {
    _weight = weight;
  }

// function get
  // double? getWeight() {
  //   return this._weight;
  // }

// getter
  double? get getWeight {
    return _weight;
  }
}
