import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myfin_app/datadiripage/data_diri.dart';
import 'package:myfin_app/loginpage/login_screen.dart';
import 'package:myfin_app/ubahpinpage/pin_lama.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 17, left: 27, right: 27),
        color: Colors.white,
        child: ListView(
          children: [
            //Judul halaman
            Container(
              child: Text(
                "Profile",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff355070)),
              ),
            ),
            SizedBox(
              height: 27,
            ),

            //Box data user
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10, left: 25),
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Color(0x26000000)),
              ),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://resources.premierleague.com/premierleague/photos/players/250x250/p14937.png'),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Cristiano Ronaldo",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 19,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "cristianoronaldo@gmail.com",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: Color(0xff757575)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "082143090698",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            color: Color(0xff757575)),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            //Form Data Pribadi
            Container(
              child: Row(
                children: [
                  Text(
                    "Data Pribadi",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 17,
                    width: 100,
                    alignment: Alignment.center,
                    child: Text(
                      "Belum Verifikasi",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xffFFFFFF)),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffEAAD53),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 17,
                    width: 100,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/document2.svg',
                          color: Color(0xffFFFFFF),
                          height: 15,
                          width: 15,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Isi Data",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 10,
                              color: Color(0xffFFFFFF)),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff01D47C),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "NIK",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 15,
                        color: Color(0xff355070)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 46,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0x24000000)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "1234567890123456",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Alamat",
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 15,
                        color: Color(0xff355070)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 46,
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0x24000000)),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      "Gonalan RT 10/RW 4 Desa Kebonagung Kecamatan Mejayan Kabupaten Madiun",
                      style: TextStyle(fontFamily: 'OpenSans', fontSize: 14),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ),

            //Akun & Keamanan
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Akun & Keamanan",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Datadiri()),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/svg/document2.svg',
                                height: 26, width: 26),
                            SizedBox(
                              width: 21,
                            ),
                            Text(
                              "Ajukan Perubahan Data",
                              style: TextStyle(
                                  fontFamily: 'OpenSans', fontSize: 15),
                            ),
                            Spacer(),
                            SvgPicture.asset('assets/svg/arrow_right.svg'),
                          ],
                        ),
                        Divider(
                          color: Color(0xffE3E3FE),
                          height: 14,
                          thickness: 1,
                          indent: 44,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PinLamascreen()),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/svg/key.svg',
                                height: 26, width: 26),
                            SizedBox(
                              width: 21,
                            ),
                            Text(
                              "Ubah PIN",
                              style: TextStyle(
                                  fontFamily: 'OpenSans', fontSize: 15),
                            ),
                            Spacer(),
                            SvgPicture.asset('assets/svg/arrow_right.svg'),
                          ],
                        ),
                        Divider(
                          color: Color(0xffE3E3FE),
                          height: 14,
                          thickness: 1,
                          indent: 44,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/lock.svg',
                              height: 26, width: 26),
                          SizedBox(
                            width: 21,
                          ),
                          Text(
                            "Pertanyaan Keamanan",
                            style:
                                TextStyle(fontFamily: 'OpenSans', fontSize: 15),
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/svg/arrow_right.svg'),
                        ],
                      ),
                      Divider(
                        color: Color(0xffE3E3FE),
                        height: 14,
                        thickness: 1,
                        indent: 44,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),

            //Info Lainnya
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Info Lainnya",
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/medal_star.svg',
                              height: 26, width: 26),
                          SizedBox(
                            width: 21,
                          ),
                          Text(
                            "Beri Rating",
                            style:
                                TextStyle(fontFamily: 'OpenSans', fontSize: 15),
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/svg/arrow_right.svg'),
                        ],
                      ),
                      Divider(
                        color: Color(0xffE3E3FE),
                        height: 14,
                        thickness: 1,
                        indent: 44,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/document.svg',
                              height: 26, width: 26),
                          SizedBox(
                            width: 21,
                          ),
                          Text(
                            "Syarat dan Ketentuan",
                            style:
                                TextStyle(fontFamily: 'OpenSans', fontSize: 15),
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/svg/arrow_right.svg'),
                        ],
                      ),
                      Divider(
                        color: Color(0xffE3E3FE),
                        height: 14,
                        thickness: 1,
                        indent: 44,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/svg/shield.svg',
                              height: 26, width: 26),
                          SizedBox(
                            width: 21,
                          ),
                          Text(
                            "Kebijakan Privasi",
                            style:
                                TextStyle(fontFamily: 'OpenSans', fontSize: 15),
                          ),
                          Spacer(),
                          SvgPicture.asset('assets/svg/arrow_right.svg'),
                        ],
                      ),
                      Divider(
                        color: Color(0xffE3E3FE),
                        height: 14,
                        thickness: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginDemo()),
                      );
                    },
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              'assets/svg/upload.svg',
                              height: 26,
                              width: 26,
                            ),
                            SizedBox(
                              width: 21,
                            ),
                            Text(
                              "Keluar",
                              style: TextStyle(
                                  fontFamily: 'OpenSans',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xffE03A45)),
                            )
                          ],
                        ),
                        Divider(
                          color: Color(0xffE3E3FE),
                          height: 18,
                          thickness: 1,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
