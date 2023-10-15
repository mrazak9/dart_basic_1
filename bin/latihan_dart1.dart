import 'employee.dart';

void main(List<String> arguments) {
  List<Employee> dataEmployee = [];
  dataEmployee.add(Pejabat("D33617", 'Umar Ahab', TipeJabatan.direktur));
  dataEmployee.add(Pejabat("K90112", 'Umar Ahab', TipeJabatan.kabag));
  dataEmployee[1].tahunMasuk = 2016;
  dataEmployee.add(StafBiasa("M89182", 'Basith', tahunMasuk: 2020));

  dataEmployee[0].presensi(DateTime.parse('2023-10-15 09:58:30'));
  dataEmployee[1].presensi(DateTime.parse('2023-10-15 08:02:30'));
  dataEmployee[2].presensi(DateTime.parse('2023-10-15 09:01:30'));

  dataEmployee[1].gaji = 500000;
  dataEmployee[2].gaji = 4500000;

  dataEmployee[1].address = "Bandung Timur, Jawa Barat Indonesia";
  dataEmployee[2].address = "jl. Sukamenak no. 111b Kab. Bandung";

  for (var staff in dataEmployee) {
    print(staff.deskripsi());
  }
}
