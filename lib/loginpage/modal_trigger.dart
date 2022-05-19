import 'package:flutter/material.dart';
import './pin_screen.dart';

class ModalTrigger extends StatelessWidget {
  const ModalTrigger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context){
                      return MyBottomSheet();
                    });
                }, 
                fillColor: const Color.fromRGBO(53, 80, 112, 1), 
                constraints: const BoxConstraints(minHeight: 49, minWidth: 128),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                textStyle: 
                  const TextStyle(
                  color: Colors.white, 
                  fontFamily: 'Poppins',
                  fontSize: 20, 
                  fontWeight: FontWeight.w500, 
                ),
                child: const Text(
                  'Masuk'),
              );
  }             
}
// ignore: use_key_in_widget_constructors
class MyBottomSheet extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          height: 310,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), 
            topRight: Radius.circular(20),
          ),
        ),
        child: InputPin(),
      )
    );
  }
}




