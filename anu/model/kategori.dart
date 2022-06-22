class Kategori {
  final int? id;
  final String? nama;

  Kategori({this.id, this.nama});

  factory Kategori.fromJson(Map<String, dynamic> json) {
    return Kategori(
        id: json['id'],
        nama: json['nama'],);
  }
}