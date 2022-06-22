class Produk {
  final int? id, harga;
  final String? judul,deskripsi;

  Produk({this.id, this.harga, this.judul, this.deskripsi});

  factory Produk.fromJson(Map<String, dynamic> json) {
    return Produk(
        id: json['id'],
        judul : json['judul'],
        deskripsi: json['deskripsi'],
        harga: json['harga'],
        );
  }
}