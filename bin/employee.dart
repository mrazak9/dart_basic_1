const umr = 3200000;

class Employee {
  //variable
  String nip;
  String name;
  String? address;
  int tahunMasuk;
  int _gaji = umr;

  //konstraktor dari class Employee
  Employee(this.nip, this.name, {this.tahunMasuk = 2015});

  //method
  void presensi(DateTime jamMasuk) {
    if (jamMasuk.hour > 8) {
      print("$name Datang terlambat");
    } else {
      print("$name datang tepat waktu");
    }
  }

  //method
  String deskripsi() {
    String teks = """======================
    NIP: $nip
    Nama: $name
    Gaji: $_gaji
    """;
    if (address != null) {
      teks += "Alamat: $address";
    }
    return teks;
  }

  //getter tunjangan
  int get tunjangan => ((2023 - tahunMasuk) < 5) ? 500000 : 1000000;

  //getter gaji
  int get gaji => (_gaji + tunjangan);

  //setter
  set gaji(int gaji) {
    if (gaji < umr) {
      _gaji = umr;
      print("Gaji $name, tidak boleh di bawah umr");
    } else {
      _gaji = gaji;
    }
  }
}
