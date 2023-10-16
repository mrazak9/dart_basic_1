// Nilai umr adalah upah minimum regional
const umr = 3200000;

// Kelas Employee mewakili seorang karyawan.
class Employee {
  String nip; // Nomor Induk Pegawai (NIP)
  String name; // Nama karyawan
  String? address; // Alamat karyawan (opsional)
  int tahunMasuk; // Tahun masuk karyawan
  int _gaji = umr; // Gaji awal karyawan, diinisialisasi dengan umr

  // Konstruktor Employee dengan parameter wajib NIP dan nama, serta tahunMasuk opsional
  Employee(this.nip, this.name, {this.tahunMasuk = 2015});

  // Metode untuk mencatat kehadiran karyawan berdasarkan waktu masuk
  void presensi(DateTime jamMasuk) {
    if (jamMasuk.hour > 8) {
      print("$name Datang terlambat");
    } else {
      print("$name datang tepat waktu");
    }
  }

  // Metode untuk mengembalikan deskripsi karyawan dalam bentuk teks
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

  // Properti untuk menghitung tunjangan berdasarkan tahun masuk
  int get tunjangan => ((2023 - tahunMasuk) < 5) ? 500000 : 1000000;

  // Properti untuk menghitung gaji total (gaji utama + tunjangan)
  int get gaji => (_gaji + tunjangan);

  // Setter untuk mengatur gaji karyawan dengan validasi
  set gaji(int gaji) {
    if (gaji < umr) {
      _gaji = umr;
      print("Gaji $name, tidak boleh di bawah umr");
    } else {
      _gaji = gaji;
    }
  }
}
