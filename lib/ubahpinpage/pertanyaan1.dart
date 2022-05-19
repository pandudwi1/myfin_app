import 'package:flutter/material.dart';
import 'pin_baru.dart';


class Pertanyaan extends StatefulWidget {
  const Pertanyaan({ Key? key }) : super(key: key);

  @override
  State<Pertanyaan> createState() => _PertanyaanState();

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const Pertanyaan(),
    );
  }
}

class _PertanyaanState extends State<Pertanyaan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Masukan PIN', 
        style: TextStyle(
          color: Color.fromRGBO(53, 80, 112, 1),
          fontSize: 25,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: 
        Center(
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: const Alignment(0, 0.5),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(height: 40),
                        buildSecurityText(),
                        const SizedBox(height: 40),
                        buildInputText(),
                        const SizedBox(height: 80),
                        buildButoon(),
                      ]
                ),
              ),
            ),
            ]
          ),
          )
        )
    );
  }
  buildSecurityText() {
    return const Text(
      "Siapa Nama Ibu Kamu ?",
      style: TextStyle(
        fontFamily: 'Poppins',
        color: Color.fromRGBO(53, 80, 112, 1),
        fontSize: 15, 
        fontWeight: FontWeight.normal,
      ),
    );
  }
  buildInputText(){
    return TextFormField(
      showCursor: true,
      autofocus: true,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintText: 'Jawab',
      ),    
    );
  }
  buildButoon(){
    return RawMaterialButton(
                onPressed: () {
                  Navigator.push(context,PinBaruscreen.route());
                }, 
                fillColor: const Color.fromRGBO(53, 80, 112, 1), 
                constraints: const BoxConstraints(minHeight: 49, minWidth: 128),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                textStyle: 
                  const TextStyle(
                  color: Colors.white, 
                  fontFamily: 'Poppins',
                  fontSize: 15, 
                  fontWeight: FontWeight.w500, 
                ),
                child: const Text(
                  'Lanjutkan'),
              );
  }
}