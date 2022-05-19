import 'package:flutter/material.dart';
import 'package:myfin_app/transaksipage/dalam_proses.dart';
import 'package:myfin_app/transaksipage/selesai.dart';

class Transaksi extends StatelessWidget {
  const Transaksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 38,
              ),

              //Judul Halaman
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Catatan Transaksi",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff355070)),
                ),
              ),
              SizedBox(
                height: 25,
              ),

              //Tab Bar
              Container(
                child: TabBar(
                    labelColor: Color(0xffE56B6F),
                    unselectedLabelColor: Color(0xff355070),
                    indicatorColor: Color(0xffE56B6F),
                    tabs: [
                      Tab(
                        child: Text(
                          "Dalam Proses",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Selesai",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ]),
              ),

              //Tab Bar View
              Expanded(
                child: Container(
                    child: TabBarView(
                  children: [DalamProses(), Selesai()],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
