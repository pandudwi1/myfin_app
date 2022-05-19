import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myfin_app/penarikansaldopage/penarikan_saldo_page.dart';

import '../pengajuankreditpage/kredit_1.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 28, left: 27, right: 27),
        color: Colors.white,
        child: ListView(children: [
          //nama dan foto profil user
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Halo,\n" + "Cristiano Ronaldo",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 17,
                    backgroundImage: NetworkImage(
                        'https://resources.premierleague.com/premierleague/photos/players/250x250/p14937.png'),
                  )
                ]),
          ),
          SizedBox(
            height: 47,
          ),

          //Saldo user
          Container(
            height: 95,
            padding: EdgeInsets.all(23),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0x26000000))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Saldo Kamu",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 13),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rp " + "10.000.000",
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 21,
                        fontWeight: FontWeight.w700),
                  )
                ]),
                IconButton(
                    icon: SvgPicture.asset('assets/svg/download.svg'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PenarikanSaldo()),
                      );
                    }),
                // SvgPicture.asset('assets/svg/download.svg'),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          //Banner aplikasi
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 298,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/png/banner.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),

          //Tombol pengajuan kredit
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Ajukan Peminjaman Untuk\nMemperoleh Kredit",
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 14),
                  ),
                  ConstrainedBox(
                    constraints:
                        BoxConstraints.tightFor(width: 140, height: 35),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Kredit1()),
                        );
                      },
                      child: Text(
                        "Ajukan Sekarang",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 13,
                            fontWeight: FontWeight.w700),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff355070)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
          SizedBox(
            height: 65,
          ),

          //Fitur pembelian
          Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Pembelian",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              )
            ]),
          ),
          SizedBox(
            height: 40,
          ),

          //Fitur Pembayaran
          Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Pembayaran",
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        color: Color(0xffc4c4c4),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              )
            ]),
          )
        ]),
      ),
    );
  }
}
