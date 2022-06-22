import 'dart:convert';

import 'package:food/anu/model/penjualan.dart';
import 'package:food/anu/model/produk.dart';
import 'package:http/http.dart' as http;
import 'model/kategori.dart';

const String baseURL = "http://192.168.1.21:8000/api/"; //emulator localhost
const Map<String, String> header = {"Content-Type": "application/json"};

class Http{
  Future getKategori() async {
    var url = Uri.parse(baseURL + 'kategori');
    // int? smt = semester;

    // print(id_siswa);

    try {
      // final response = await http.post(url);
      http.Response response = await http.get(
        url,
        headers: header,
      );
      // print(response.body);

      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);

        List<Kategori> kategori = it.map((e) => Kategori.fromJson(e)).toList();

        print(response.body);

        return kategori;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future getProduk(String? kategori) async {
    var url = Uri.parse(baseURL + 'produk');

    Map data = {"kategori": kategori};
    var body = json.encode(data);
    
    try {
      // final response = await http.post(url);
      http.Response response = await http.post(
        url,
        headers: header,
        body: body
      );
      // print(response.body);

      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);

        List<Produk> produk = it.map((e) => Produk.fromJson(e)).toList();

        print(response.body);

        return produk;
      }
    } catch (e) {
      print(e.toString());
    }
  }

  Future postPesan(String? judul, String? harga, int? jumlah, String? thumbnail) async {
    var url = Uri.parse(baseURL + 'pesan');

    Map data = {
      "judul" :judul,
      "harga": harga,
      "jumlah": jumlah,
      "thumbnail": thumbnail
      };
    var body = json.encode(data);
    
    try {
      // final response = await http.post(url);
      http.Response response = await http.post(
        url,
        headers: header,
        body: body
      );
      // print(response.body);

        return print(response.body);
      
    } catch (e) {
      print(e.toString());
    }
  }

  Future getTransaksi() async {
    var url = Uri.parse(baseURL + 'penjualan');
    // int? smt = semester;

    // print(id_siswa);

    try {
      // final response = await http.post(url);
      http.Response response = await http.get(
        url,
        headers: header,
      );
      // print(response.body);

      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);

        List<Penjualan> penjualan = it.map((e) => Penjualan.fromJson(e)).toList();

        print(response.body);

        return penjualan;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}