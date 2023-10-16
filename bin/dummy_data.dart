import 'employee.dart';

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
