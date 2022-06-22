import 'package:flutter/material.dart';
import 'package:food/users/produkpage.dart';

import '../anu/model/kategori.dart';
import '../anu/http.dart';

class KategoriPage extends StatefulWidget {
  @override
  _KategoriPageState createState() => _KategoriPageState();
}

class _KategoriPageState extends State<KategoriPage> {
  List<Kategori> listKategori = [];
  Http http = Http();

  getDataKategori() async {
    listKategori = await http.getKategori();
    setState(() {});
  }

  @override
  void initState() {
    // http.getSemester_1();
    getDataKategori();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kategori'),
        ),
      body: Container(
        child: ListView.builder(
          itemCount: listKategori.length,
          itemBuilder: (context, index) {
            // Jika data mingguan Kosong
            
              return SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      
                      _detailsCard("Kategori", "${listKategori[index].nama}",
                          Icons.info),
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProdukPage(
          kategori: value,
        ),
      ),
      ),
        child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 16.0,
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
                      color: Colors.green,
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    value,
                    style: TextStyle(
                      // color: Colors.grey[700],
                      fontSize: 20.0,
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


