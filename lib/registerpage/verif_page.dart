import 'package:flutter/material.dart';
import 'package:myfin_app/createpinpage/onboarding_pin.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verifikasi extends StatefulWidget {
  @override
  _VerifikasiState createState() => _VerifikasiState();
}

class _VerifikasiState extends State<Verifikasi> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 52),
              child: Image.asset(
                "assets/png/verif.png",
                width: 293,
                height: 293,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Verifikasi Akun',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color.fromRGBO(53, 80, 112, 1),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Text(
                'Cek email kamu untuk mendapatkan kode\nverifikasi dari akun',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xffA8A8A8),
                  fontSize: 11,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 42, right: 42, top: 23),
              child: Center(
                child: PinCodeTextField(
                  length: 4,
                  backgroundColor: Colors.white,
                  keyboardType: TextInputType.numberWithOptions(),
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 54,
                      fieldWidth: 57,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      inactiveColor: Color(0x26000000),
                      activeColor: Color(0x26000000)),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  controller: textEditingController,
                  onCompleted: (v) {
                    debugPrint("Completed");
                  },
                  onChanged: (value) {
                    debugPrint(value);
                    setState(() {
                      currentText = value;
                    });
                  },
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 28),
              child: Text(
                'Kirim ulang kode',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Color(0xffA8A8A8),
                  fontSize: 11,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            RawMaterialButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Onboarding();
                }));
              },
              fillColor: Color.fromRGBO(53, 80, 112, 1),
              constraints: BoxConstraints(minHeight: 49, minWidth: 128),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              textStyle: TextStyle(
                color: Colors.white,
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              child: Text('Verifikasi'),
            ),
          ],
        ),
      ),
    );
  }
}
