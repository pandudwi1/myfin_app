import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class Datadiri extends StatefulWidget {
  const Datadiri({ Key? key }) : super(key: key);

  @override
  State<Datadiri> createState() => _DatadiriState();
  
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const Datadiri(),
    );
  }
}

class CustomWidgets {
  static Widget textField(String title,
      {
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

class CustomSizedbox {
  static Widget box(String title,
      {
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
        ],
      ),
    );
  }
}

class _DatadiriState extends State<Datadiri> {
  File? _image;
  File? _foto;
  final picker = ImagePicker();

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
        title: const Text('Isi Data Pribadi', 
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
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Column(
            children: [
              CustomWidgets.textField('NIK',isNumber: true, length: 16, cornerRadius: 10.0),
              CustomWidgets.textField('Alamat', cornerRadius: 10.0),
              CustomWidgets.textField('Tanggal Lahir',isNumber: true, length: 10, cornerRadius: 10.0),
              CustomWidgets.textField('Kota Lahir', cornerRadius: 10.0),
              Row(children: [
                CustomSizedbox.box('Upload KTP'),
              ],) ,
              InkWell(
              onTap: () {
                showOptions1();
              },
              child: _image == null ? Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      width: 400,
                      height: 200,
                      child: const Icon(
                        CupertinoIcons.camera,
                        color: Colors.grey,
                      ),
                    )
                  : Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      width: 400,
                      height: 170,
                      child: Image.file(
                        _image!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(children: [
                CustomSizedbox.box('Upload Swafoto dengan KTP'),
              ],) ,
              InkWell(
              onTap: () {
                showOptions2();
              },
              child: _foto == null ? Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      width: 400,
                      height: 200,
                      child: const Icon(
                        CupertinoIcons.camera,
                        color: Colors.grey,
                      ),
                    )
                  : Container(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.grey,
                          )),
                      width: 400,
                      height: 170,
                      child: Image.file(
                        _foto!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
              buildButton()
          ],
        ),
      ),
    )
    );
  }
  buildButton(){
    return RawMaterialButton(
                onPressed: () {
                  
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
                  'Simpan'),
              );
  }
   //Image Picker function to get image from gallery
  Future getImageFromGallery1() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 400,
      maxWidth: 800,
      imageQuality: 100,
      );

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future getImageFromCamera1() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      maxHeight: 400,
      maxWidth: 800,
      imageQuality: 100,);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future showOptions1() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: const Text('Photo Gallery'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from gallery
              getImageFromGallery1();
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Camera'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from camera
              getImageFromCamera1();
            },
          ),
        ],
      ),
    );
  }

   Future getImageFromGallery2() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 400,
      maxWidth: 800,
      imageQuality: 100,
      );

    setState(() {
      if (pickedFile != null) {
        _foto = File(pickedFile.path);
      }
    });
  }

  Future getImageFromCamera2() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.camera,
      maxHeight: 400,
      maxWidth: 800,
      imageQuality: 100,);

    setState(() {
      if (pickedFile != null) {
        _foto = File(pickedFile.path);
      }
    });
  }

  Future showOptions2() async {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        actions: [
          CupertinoActionSheetAction(
            child: const Text('Photo Gallery'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from gallery
              getImageFromGallery2();
            },
          ),
          CupertinoActionSheetAction(
            child: const Text('Camera'),
            onPressed: () {
              // close the options modal
              Navigator.of(context).pop();
              // get image from camera
              getImageFromCamera2();
            },
          ),
        ],
      ),
    );
  }
}