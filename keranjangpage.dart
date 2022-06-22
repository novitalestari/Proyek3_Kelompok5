import 'package:flutter/material.dart';
import 'package:food/anu/model/penjualan.dart';
import '../anu/http.dart';

class KeranjangPage extends StatefulWidget {
  @override
  _KeranjangPageState createState() => _KeranjangPageState();
}

class _KeranjangPageState extends State<KeranjangPage> {
   List<Penjualan> listPenjualan = [];
  Http http = Http();

  getDataTransaksi() async {
    listPenjualan = await http.getTransaksi();
    setState(() {});
  }

  @override
  void initState() {
    // http.getSemester_1();
    getDataTransaksi();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Riwayat Pemesanan"),
      ),
      body: Container(
        child: ListView.builder(
          itemCount: listPenjualan.length,
          itemBuilder: (context, index) {
            // Jika data mingguan Kosong
            
              return SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      
                      _detailsCard("${listPenjualan[index].tanggal}","${listPenjualan[index].judul}", "${listPenjualan
                      [index].harga}",
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

  Widget _detailsCard(String tanggal, String judul, String value, IconData icon) {
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
              
              SizedBox(width: 24.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    tanggal,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
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
