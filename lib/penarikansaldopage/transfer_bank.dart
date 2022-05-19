import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TransferBank extends StatefulWidget {
  const TransferBank({ Key? key }) : super(key: key);

  @override
  State<TransferBank> createState() => _TransferBankState();
}

class _TransferBankState extends State<TransferBank> {
  String? _valBank;
  List _listBank = ['BRI', 'BNI', 'BCA', 'Mandiri'];

  @override
  Widget build(BuildContext context) {
    return Container(
                  color: Colors.white,
                  child: Center(
                    child: ListView(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/png/atm.png',
                            height: 222,
                            width: 222,
                          ),
                        ),
                        SizedBox(height: 26),
                        Container(
                            child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                children: [
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        hintText: "Masukkan Nominal"),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Tersedia : ",
                                        style: TextStyle(
                                            fontFamily: 'OpenSans',
                                            fontSize: 10,
                                            color: Color(0xffA8A8A8)),
                                      ),
                                      Text(
                                        "Rp " + "10.000.000",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  DropdownButtonHideUnderline(
                                    child: DropdownButton2(
                                      isExpanded: true,
                                      hint: Row(
                                        children: const [
                                          Expanded(
                                            child: Text(
                                              'Pilih Bank',
                                            ),
                                          ),
                                        ],
                                      ),
                                      icon: SvgPicture.asset(
                                          'assets/svg/arrow_down.svg'),
                                      buttonPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      items: _listBank
                                          .map((item) =>
                                              DropdownMenuItem<String>(
                                                value: item,
                                                child: Text(item),
                                              ))
                                          .toList(),
                                      value: _valBank,
                                      onChanged: (value) {
                                        setState(() {
                                          _valBank = value as String;
                                        });
                                      },
                                      buttonDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color(0xffA8A8A8)),
                                      ),
                                      dropdownDecoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Color(0xffA8A8A8)),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  TextFormField(
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        hintText: "Nomor Rekening"),
                                  ),
                                  SizedBox(
                                    height: 24,
                                  ),
                                  TextFormField(
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        hintText: "Nama Pemilik"),
                                  ),
                                  SizedBox(
                                    height: 34,
                                  )
                                ],
                              ),
                            ),
                            ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  width: 128, height: 50),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(
                                      Color(0xff355070)),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Ajukan",
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                                onPressed: () {},
                              ),
                            ),
                            SizedBox(
                              height: 34,
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                );
  }
}