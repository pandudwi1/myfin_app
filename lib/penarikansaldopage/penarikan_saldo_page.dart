import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfin_app/penarikansaldopage/ambil_offline.dart';
import 'package:myfin_app/penarikansaldopage/transfer_bank.dart';

class PenarikanSaldo extends StatelessWidget {
  const PenarikanSaldo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
            length: 2,
            child: Scaffold(
              //Judul Halaman
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                  icon: SvgPicture.asset(
                    'assets/svg/arrow_left.svg',
                    color: Color(0xff355070),
                    height: 30,
                    width: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: Text(
                  "Penarikan Saldo",
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff355070)),
                ),
                centerTitle: true,
                bottom: TabBar(
                  labelColor: Color(0xffE56B6F),
                  unselectedLabelColor: Color(0xff355070),
                  indicatorColor: Color(0xffE56B6F),
                  tabs: [
                    Tab(
                        child: Text("Ambil Offline",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            ))),
                    Tab(
                        child: Text("Transfer Bank",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                            )))
                  ],
                ),
              ),
              body: TabBarView(children: [
                //Tab Bar Ambil Offline
                AmbilOffline(),

                //Tab Bar Transfer Bank
                TransferBank()
              ]),
            )));
  }
}
