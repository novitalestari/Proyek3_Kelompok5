import 'package:flutter/material.dart';
import 'package:food/anu/model/kategori.dart';
import '../constans.dart';
import 'beranda.dart';
import 'favoritepage.dart';
import 'keranjangpage.dart';
import 'login.dart';
import 'transaksipage.dart';
import 'akunpage.dart';
import 'kategoripage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrent = 0;
  List<Widget> _container = [
    new Beranda(),
    new KategoriPage(),
    // new KeranjangPage(),
    new TransaksiPage(),
    new AkunPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _container[_bottomNavCurrent],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Palette.bg1,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _bottomNavCurrent = index;
              });
            },
            currentIndex: _bottomNavCurrent,
            items: 
            [
              BottomNavigationBarItem(activeIcon:  Icon(
              Icons.home,
              color: Palette.bg1,
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: 'Beranda',
              ),
              BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.category,
                  color: Palette.bg1,
                ),
                icon: new Icon(
                Icons.category,
                color: Colors.grey,
                ),
                label: 'Kategori',
              ),
              // BottomNavigationBarItem(
              //   activeIcon: Icon(
              //     Icons.home,
              //     color: Palette.bg1,
              //     ),
              //   icon: new Icon(
              //     Icons.shopping_bag,
              //     color: Colors.grey,
              //     ),
              // label: 'Keranjang',
              // ),
              BottomNavigationBarItem(
                activeIcon: new Icon(
                  Icons.money,
                  color: Palette.bg1,
                ),
                icon: new Icon(
                Icons.money,
                color: Colors.grey,
                ),
                label: 'Transaksi',
              ),
              
              
              ]));
  }
}
