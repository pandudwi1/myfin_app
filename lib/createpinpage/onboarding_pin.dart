import 'package:flutter/material.dart';
import 'package:myfin_app/createpinpage/create_pin_screen.dart';

// ignore: use_key_in_widget_constructors
class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => Onboarding());
  }
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 67.0),
              child: Text(
                'Buat PIN',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(53, 80, 112, 1),
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              children: const [
                Text(
                  'Buat PIN kamu untuk mengakses aplikasi ',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(168, 168, 168, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    height: 2,
                  ),
                ),
                Text(
                  'pastikan untuk mengingat PIN yang anda buat',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color.fromRGBO(168, 168, 168, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                )
              ],
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(bottom: 90.0, top: 10),
              child: Image.asset(
                "assets/png/onboardingpin.png",
                width: 280,
                height: 280,
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.push(context, Createpinscreen.route());
              },
              fillColor: const Color.fromRGBO(53, 80, 112, 1),
              constraints: const BoxConstraints(minHeight: 49, minWidth: 128),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              textStyle: const TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              child: const Text('Lanjutkan'),
            ),
          ],
        ),
      ),
    );
  }
}
