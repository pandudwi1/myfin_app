import 'package:flutter/material.dart';

import '../detailtransaksipage/detail_transaksi_page.dart';

class Selesai extends StatefulWidget {
  const Selesai({Key? key}) : super(key: key);

  @override
  State<Selesai> createState() => _SelesaiState();
}

class _SelesaiState extends State<Selesai> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailTransaksi()),
        );
      }),
      child: ListView(
        children: [
          Container(
            height: 95,
            margin: EdgeInsets.only(top: 25, left: 19, right: 19),
            padding: EdgeInsets.all(17),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Pengajuan Kredit",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "ID : 29308594803",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 9,
                        color: Color(0xff757575)),
                  ),
                  Spacer(),
                  Text(
                    "12 Maret 2022",
                    style: TextStyle(fontFamily: 'Poppins', fontSize: 9),
                  )
                ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp 5.000.000",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Berhasil",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff01D47C)),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
