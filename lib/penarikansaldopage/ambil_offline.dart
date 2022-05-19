import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AmbilOffline extends StatelessWidget {
  const AmbilOffline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(children: [
        Container(
          padding: EdgeInsets.only(top: 70),
          child: Text(
            "Untuk mengambil uang bisa langsung datangi\ncustomer\nservice Myfin dan sebutkan nama kamu",
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () {
            MapUtils.openMap(-7.556480, 111.659966);
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 22),
            padding: EdgeInsets.only(left: 15),
            height: 95,
            child: Row(
              children: [
                SvgPicture.asset('assets/svg/google_maps.svg'),
                SizedBox(
                  width: 23,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Myfin Office",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Desa Pandean Kec. Mejayan Kab. Madiun",
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 12),
                    )
                  ],
                )
              ],
            ),
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
          ),
        )
      ]),
    );
  }
}

class MapUtils {
  MapUtils._();

  static Future<void> openMap(double derajat, double desimal) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$derajat,$desimal';
    if (await canLaunchUrlString(googleUrl)) {
      await launchUrlString(googleUrl);
    } else {
      throw 'Tidak Bisa Membuka Map';
    }
  }
}
