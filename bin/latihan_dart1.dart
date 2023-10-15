import 'employee.dart';

void main(List<String> arguments) {
  List<Employee> dataEmployee = genData(dummyData());

  dataEmployee[0].presensi(DateTime.parse('2023-10-15 09:58:30'));
  dataEmployee[1].presensi(DateTime.parse('2023-10-15 08:02:30'));
  dataEmployee[2].presensi(DateTime.parse('2023-10-15 09:01:30'));

  dataEmployee[0].gaji = 1500000;
  dataEmployee[1].gaji = 500000;
  dataEmployee[2].gaji = 4500000;

  dataEmployee[1].address = "Bandung Timur, Jawa Barat Indonesia";
  dataEmployee[2].address = "jl. Sukamenak no. 111b Kab. Bandung";

  for (var staff in dataEmployee) {
    print(staff.deskripsi());
  }
}

List<Employee> genData(var listData) {
  List<Employee> data = [];
  for (var dataPegawai in listData) {
    Employee employee;
    if (dataPegawai.containsKey('jabatan')) {
      employee = Pejabat(
          dataPegawai['nip'], dataPegawai['name'], dataPegawai['jabatan']);
    } else {
      employee = StafBiasa(dataPegawai['nip'], dataPegawai['name']);
    }

    if (dataPegawai.containsKey('tahun_masuk')) {
      employee.tahunMasuk = dataPegawai['tahun_masuk'];
    }

    if (dataPegawai.containsKey('address')) {
      employee.address = dataPegawai['address'];
    }
    data.add(employee);
  }
  return data;
}

List<Map<String, dynamic>> dummyData() {
  List<Map<String, dynamic>> data = [
    {
      "nip": "119981",
      "name": "Ilyas",
      "thn_masuk": 2019,
      "jabatan": TipeJabatan.direktur,
      "alamat": "Bandung Timur",
    },
    {
      "nip": "119978",
      "name": "Yunus",
      "thn_masuk": 2016,
      "jabatan": TipeJabatan.manajer,
      "alamat": "Bandung Kota",
    },
    {
      "nip": "119984",
      "name": "Zakaria",
      "thn_masuk": 2020,
      "jabatan": TipeJabatan.kabag,
      "alamat": "Bandung Barat",
    },
    {
      "nip": "119979",
      "name": "Ibrahim",
      "thn_masuk": 2022,
      "alamat": "Bandung Selatan",
    },
  ];

  return data;
}
