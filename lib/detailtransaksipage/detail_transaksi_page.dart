import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailTransaksi extends StatelessWidget {
  const DetailTransaksi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              'assets/svg/arrow_left.svg',
              color: Color(0xff355070),
              height: 30,
              width: 30,
            )),
        title: Text(
          "Detail Transaksi",
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Color(0xff355070),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromRGBO(227, 227, 254, 0.39),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                    height: 215,
                    child: Image.asset(
                      'assets/png/detailtransaksi.png',
                      fit: BoxFit.none,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: ListView(children: [
                  Container(
                    padding: EdgeInsets.only(top: 45, left: 39, right: 39),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Jenis Transaksi",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 11,
                                color: Color(0xff757575)),
                          ),
                          Text(
                            "Pengajuan Kredit",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10),
                          Text("ID Transaksi",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  color: Color(0xff757575))),
                          Text("0819938448839",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          Text("Nominal",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  color: Color(0xff757575))),
                          Text("Rp " + "5.000.000",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(height: 10),
                          Text("Status",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  color: Color(0xff757575))),
                          Text("Berhasil",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff01D47C))),
                          SizedBox(height: 10),
                          Text("Tanggal",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 11,
                                  color: Color(0xff757575))),
                          Text("12 Maret 2022",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600)),
                          SizedBox(
                            height: 31,
                          ),
                        ]),
                  ),
                  Container(
                    child: Center(
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints.tightFor(height: 49, width: 279),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Download Bukti",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff4E6682)),
                          ),
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Color(0xff4E6682), width: 2),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
