class Penjualan {
  final String? tanggal, judul, harga;

  Penjualan({this.tanggal, this.judul, this.harga});

  factory Penjualan.fromJson(Map<String, dynamic> json) {
    return Penjualan(
        tanggal: json['tanggal'],
        judul : json['judul'],
        harga: json['harga'],
        );
  }
}