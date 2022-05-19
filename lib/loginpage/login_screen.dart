import 'package:flutter/material.dart';
import 'package:myfin_app/loginpage/modal_trigger.dart';
import 'package:myfin_app/registerpage/register_page.dart';

// ignore: use_key_in_widget_constructors
class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 68.0),
            child: Text(
                  'Login Akun',
                  style: TextStyle(fontFamily: 'Poppins',color: Color.fromRGBO(53, 80, 112, 1), 
                  fontSize: 30, 
                  fontWeight: FontWeight.w700,
                  ),
                ),
            ),
            const SizedBox(height: 68),
            Image.asset(
              "assets/png/login.png",
              width: 280,
              height: 250,
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.only(left:32.0, right: 32.0, top: 60.0),
              child: Form(
              autovalidateMode: AutovalidateMode.always,
              child: TextFormField(
                validator: (value) => validateEmail(value),
                showCursor: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    hintText: 'Email / No.HP',
                    ),    
              ),
              )
            ),
            const SizedBox(
              height: 50,
            ),
            Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: const ModalTrigger(),),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text('Belum Punya Akun?'),
            TextButton(
              style: TextButton.styleFrom(
                primary: const Color.fromRGBO(2, 62, 138, 1),
                textStyle: const TextStyle(fontWeight: FontWeight.bold),
              ),
              child: const Text("Daftar"),
              onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Register()),
                );}, ),
            ],
            )
          ],
        ),
      ),
    );
  }

   validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }
}