import 'employee.dart';

void main(List<String> arguments) {
  Employee staff1 = Employee("116007", "Usman");
  Employee staff2 = Employee("116116", "Basir", tahunMasuk: 2016);
  Employee staff3 = Employee("116221", "Bagas", tahunMasuk: 2020);

  staff1.presensi(DateTime.parse('2023-10-15 09:58:30'));
  staff2.presensi(DateTime.parse('2023-10-15 08:02:30'));
  staff3.presensi(DateTime.parse('2023-10-15 08:58:30'));

  staff1.gaji = 500000;
  staff2.gaji = 4500000;

  staff1.address = "Bandung Timur, Jawa Barat Indonesia";
  staff2.address = "jl. Sukamenak no. 111b Kab. Bandung";

  print(staff1.deskripsi());
  print(staff2.deskripsi());
  print(staff3.deskripsi());
}
