import 'package:flutter/material.dart';
import 'package:food/anu/model/produk.dart';
import 'package:food/users/transaksipage.dart';
import '../anu/http.dart';

class ProdukPage extends StatefulWidget {
  String? kategori;

  ProdukPage({this.kategori});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  List<Produk> listProduk = [];
  Http http = Http();

  getDataProduk() async {
    listProduk = await http.getProduk(widget.kategori);
    setState(() {});
  }

  // postDataPenjualan() async {
  //   listProduk = await http.postPesan(widget.kategori);
  //   setState(() {});
  // }

  @override
  void initState() {
    // http.getSemester_1();
    getDataProduk();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.kategori.toString()),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: listProduk.length,
          itemBuilder: (context, index) {
            // Jika data mingguan Kosong
            
              return SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      
                      _detailsCard("${listProduk[index].judul}", "${listProduk[index].harga}",
                          Icons.food_bank),
                    ],
                  ),
                ),
              );
          },
        ),
      ),
    );
  }

  Widget _detailsCard(String judul, String value, IconData icon) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {},
        child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 5.0,
            vertical: 5.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.green,
                ),
              ),
              SizedBox(width: 24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    judul,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    "Rp. " + value + ".000",
                    style: TextStyle(
                      // color: Colors.grey[700],
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: RaisedButton(
                  onPressed: () {
                    http.postPesan(judul, value, 1, "ini thumbnail");
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return TransaksiPage();
                        }));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    alignment: Alignment.center,
                    height: 50.0,
                    width: size.width * 0.5,
                    decoration: new BoxDecoration(
                        borderRadius: BorderRadius.circular(80.0),
                        gradient: new LinearGradient(colors: [
                          Color.fromARGB(255, 81, 180, 238),
                          Color.fromARGB(255, 41, 109, 255)
                        ])),
                    padding: const EdgeInsets.all(0),
                    child: Text(
                      "PESAN",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
                  
                ],
              ),
            ],
          ),
        ),
      ),
        ),
    );
  }
}