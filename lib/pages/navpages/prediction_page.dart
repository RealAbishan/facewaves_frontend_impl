import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/widgets/app_large.text.dart';
import 'package:facewaves_frontend/pages/detail_page.dart';
import 'package:facewaves_frontend/pages/generated_poem.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:math';
import 'package:flutter/services.dart';
import 'package:facewaves_frontend/widgets/custom_button.dart';
import 'package:image_picker/image_picker.dart';

class PredictionPage extends StatefulWidget {
  const PredictionPage({Key? key}) : super(key: key);

  @override
  State<PredictionPage> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {

  File? image;

  Future selectFromGallery() async {
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    }
    on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
  }

  Future selectFromCamera() async {
    try{
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if(image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    }
    on PlatformException catch(e) {
      print('Failed to pick image: $e');
    }
    // sendImage(image);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(Icons.menu, size: 30, color: kPrimaryColor),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.3)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 45),
                  width: 300,
                  height: 300,
                  alignment: Alignment.center,
                  child: image != null ? Image.file(image!):Image.network("https://cvcollective.ca/wp-content/uploads/2021/01/CVC_Vol24_GettingTheDrift_Header-940x470.jpg", fit: BoxFit.fill,),


                  //CustomButton()
                ),

              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => selectFromGallery(),
            child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: CustomResponsiveButton(
                  // iconData: Icons.camera_enhance_outlined,
                  text: "Select from Gallery",
                )),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              selectFromCamera();
            },
            child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: CustomResponsiveButton(
                  // iconData: Icons.camera_enhance_outlined,
                  text: "Select from Camera",
                )),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GeneratedPoemPage()));
            },
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: CustomResponsiveButton(
                // iconData: Icons.camera_enhance_outlined,
                text: "Generate Poem",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
