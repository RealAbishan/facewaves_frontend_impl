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
import 'package:facewaves_frontend/pages/main_page.dart';


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
            height: 120,
            child: Stack(
              children: [
                Positioned(
                    left: 10,
                    top: 60,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            },
                            icon: Icon(
                              Icons.chevron_left_rounded,
                              color: kPrimaryColor,
                              size: 39,
                            )),
                      ],
                    )),
                Positioned(
                    left: 128,
                    top: 75,
                    child: Text(
                      "Generate Poem",
                      style: TextStyle(
                          fontSize: 20,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    left: 330,
                    top: 60,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage()));
                            },
                            icon: Icon(
                              Icons.more_vert_outlined,
                              color: kPrimaryColor,
                              size: 39,
                            )),
                      ],
                    )),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 45),
                  width: 300,
                  height: 300,
                  alignment: Alignment.center,
                  child: image != null ? Image.file(image!):Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1200px-No-Image-Placeholder.svg.png", fit: BoxFit.fill,),


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
