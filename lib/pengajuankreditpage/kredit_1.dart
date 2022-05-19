import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';


class Kredit1 extends StatefulWidget {
  Kredit1({ Key? key }) : super(key: key);
  
  final nominal = NumberFormat("#,##0.00", "en_US");

  @override
  State<Kredit1> createState() => _Kredit1State();

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) =>  Kredit1(),
    );
  }
}

class CustomWidgets {
  static Widget textField(String title,
      {
      final nominal = NumberFormat,
      bool isNumber = false,
      int? length,
      TextEditingController? textController,
      int lines = 1,
      var cornerRadius = 0.0}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.normal, 
              fontFamily: 'Oppen-sans',
              color: Color(0xff355070),
              fontSize: 15),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            maxLines: lines,
            controller: textController,
            autofocus: true,
            maxLength: length,
            inputFormatters: [
              LengthLimitingTextInputFormatter(length),
            ],
            keyboardType: isNumber ? TextInputType.number : TextInputType.text,
            textCapitalization: TextCapitalization.words,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
                counterText: '',
                border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(cornerRadius),
                      ),
                fillColor: Colors.transparent,
                ),
          )
        ],
      ),
    );
  }
}

class _Kredit1State extends State<Kredit1> {
  
  
  String? valueChose;
  List listItem = [
    "3 Bulan", "6 Bulan", "10 Bulan"
  ];

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
        title: const Text('Pengajuan Kredit', 
        style: TextStyle(
          color: Color.fromRGBO(53, 80, 112, 1),
          fontSize: 25,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              CustomWidgets.textField('Penggunaan', 
              cornerRadius: 10.0
              ),
              const SizedBox(height: 10),
              CustomWidgets.textField('Besar Pengajuan',
                isNumber: true, 
                length: 10, 
                cornerRadius: 10.0,
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  Text("Tenor",
                  style: TextStyle(
                  fontWeight: FontWeight.normal, 
                  fontFamily: 'Oppen-sans',
                  color: Color(0xff355070),
                  fontSize: 15),
              ),
              ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: DropdownButton(
                  hint: const Text("Pilih Tenor"),
                  dropdownColor: Colors.white70,
                  icon: const Icon(Icons.arrow_drop_down),
                  iconSize: 36,
                  isExpanded: true,
                  underline: const SizedBox(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                  value: valueChose, 
                  onChanged: (newValue){
                    setState(() {
                      valueChose = newValue as String?;
                    });
                },
                items: listItem.map((valueItem) {
                  return DropdownMenuItem(
                    value: valueItem,
                    child: Text(valueItem),
                  );
                }).toList()
                ),
              ),
              const SizedBox(height: 40),
              buildButton()
            ],
          ),
        ),
      ),
    );
    
  }
  buildButton(){
    return RawMaterialButton(
                onPressed: () {
                  //Navigator.push(context,PinBaruscreen.route());
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