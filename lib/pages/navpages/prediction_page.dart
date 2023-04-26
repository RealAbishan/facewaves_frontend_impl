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
import 'package:facewaves_frontend/authControllers/auth_controller.dart';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:typed_data';
import 'package:provider/provider.dart';

class PredictionPage extends StatefulWidget {
  const PredictionPage({Key? key}) : super(key: key);

  @override
  State<PredictionPage> createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  String ans = "";

  File? image;

  Future selectFromGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future selectFromCamera() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
    // sendImage(image);
  }

  //upload image from
  // doUpload(){
  //   var request = http.MultipartRequest(
  //     'POST',
  //     Uri.parse("http://127.0.0.1:9090/predict"),
  //   );
  //   Map<String, String> headers = {"Content-type": "multipart/form-data"};
  //   request.files.add(
  //     http.MultipartFile(
  //       'image',
  //       image.readAsBytes().asStream(),
  //       image.lengthSync(),
  //       filename: "filename",
  //       contentType: MediaType('image', 'jpeg'),
  //     ),
  //   );
  //   request.headers.addAll(headers);
  //   print("request: " + request.toString());
  //   request.send().then((value) => print(value.statusCode));
  // }



  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: ChangeNotifierProvider<MyProvider>(
            create: (context) => MyProvider(),
            child: Consumer<MyProvider>(builder: (context, provider, child) {
              return Column(
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
                                              builder: (context) =>
                                                  MainPage()));
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
                                              builder: (context) =>
                                                  MainPage()));
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

                  //Show Selected Image
                  Container(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 45),
                          width: 300,
                          height: 300,
                          alignment: Alignment.center,
                          child: image != null
                              ? Image.file(image!)
                              : Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1200px-No-Image-Placeholder.svg.png",
                                  fit: BoxFit.fill,
                                ),

                          //CustomButton()
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Image Picking Media
                  Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: GestureDetector(
                        child: Row(
                      children: [

                        GestureDetector(
                          onTap: () async {
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            provider.setImage(image);

                            if (image == null) return;

                            final imageTemp = File(image.path);

                            setState(() => this.image = imageTemp);
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: width * 0.43,
                            height: height * 0.07,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: bWhite.withOpacity(0.8),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 7,
                                      offset: Offset(1, 1),
                                      color: Colors.grey.withOpacity(0.3))
                                ]),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 20,
                                    top: 19,
                                    child: Icon(
                                      Icons.photo_album_outlined,
                                      size: 24,
                                      color: kPrimaryColor,
                                    )),
                                Positioned(
                                    left: 60,
                                    top: 20,
                                    child: Text(
                                      "Gallery",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () async {
                            var image = await ImagePicker()
                                .pickImage(source: ImageSource.gallery);
                            provider.setImage(image);
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 10),
                            width: width * 0.43,
                            height: height * 0.07,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
                                color: bWhite.withOpacity(0.8),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10,
                                      spreadRadius: 7,
                                      offset: Offset(1, 1),
                                      color: Colors.grey.withOpacity(0.3))
                                ]),
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 20,
                                    top: 19,
                                    child: Icon(
                                      Icons.camera_enhance_outlined,
                                      size: 24,
                                      color: kPrimaryColor,
                                    )),
                                Positioned(
                                    left: 60,
                                    top: 20,
                                    child: Text(
                                      "Camera",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //Generate Poem
                  Container(
                    child: GestureDetector(
                      onTap: () async {
                        if (provider.image == null) return;
                        var finalResponse = await provider.makePostRequest();
                        provider.setResponse(finalResponse);
                        print(finalResponse);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        width: width * 0.879,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: bWhite.withOpacity(0.8),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.3))
                            ]),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 110,
                                top: 20,
                                child: Text(
                                  "Generate Poem",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 20,
                  ),

                  //View Poem in the Generated Poem Screen
                  Container(
                    child: GestureDetector(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder:
                            (context) => GeneratedPoemPage(poem: provider.response)));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        width: width * 0.879,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: bWhite.withOpacity(0.8),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1, 1),
                                  color: Colors.grey.withOpacity(0.3))
                            ]),
                        child: Stack(
                          children: [
                            Positioned(
                                left: 130,
                                top: 20,
                                child: Text(
                                  "View Poem",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: kPrimaryColor,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            })));
  }
}

class MyProvider extends ChangeNotifier {
  var image;
  var response = ''; //res="";
  Future setImage(img) async {
    this.image = img;
    this.notifyListeners();
  }

  setResponse(decode) {
    this.response = decode;
    this.notifyListeners();
  }

  Future<String> makePostRequest() async {
    String url = "http://192.168.8.104:9898/predict";
    final headers = {
      'Content-Type': 'multipart/form-data',
    };
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.headers.addAll(headers);
    Uint8List data = await this.image.readAsBytes();
    List<int> list = data.cast();
    request.files.add(http.MultipartFile.fromBytes('file', list,
        filename: 'img.png')); // Now we can make this call
    http.StreamedResponse r = await request.send();
    var res = '';
    var finalString = await r.stream.transform(utf8.decoder).join();
    var hh = finalString.split(":");
    String ans = hh[1];
    var array = ans.split('');

    array.forEach((element) {
      if (element != "'" &&
          element != "[" &&
          element != "]" &&
          element != '"' &&
          element != "}") res += element;
    });

    // var decodedResponse = ascii.decoder.;
    //var decodedResponse = Text(utf8.);

    // String tamilString = res;
    // List<int> codeUnits = tamilString.codeUnits;
    // String decodedString = utf8.decode(codeUnits);
    // print(decodedString);

    // final String str = res;
    // final Pattern unicodePattern = new RegExp(r'\\u([0-9A-Fa-f]{4})');
    // final String newStr = str.replaceAllMapped(unicodePattern, (Match unicodeMatch) {
    //   final int hexCode = int.parse(unicodeMatch.group(1), radix: 16);
    //   final unicode = String.fromCharCode(hexCode);
    //   return unicode;
    // });
    // print('Old string: $str');
    // print('New string: $newStr');

    String? tamilString = res;
    String decodedString = tamilString?.replaceAllMapped(
      RegExp(r'\\u([0-9a-fA-F]{4})'),
          (Match m) => String.fromCharCode(int.parse(m.group(1)!, radix: 16)),
    ) ?? '';
    print(decodedString); // Output: தமிழ் // Output: தமிழ்

    return decodedString;
  }

  //Decode the Response

  // String main(String res) {
  //   var s = res ;
  //   var re = RegExp(
  //     r'(%(?<asciiValue>[0-9A-Fa-f]{2}))'
  //     r'|(%u(?<codePoint>[0-9A-Fa-f]{4}))'
  //     r'|.',
  //   );
  //   var matches = re.allMatches(s);
  //   var codePoints = <int>[];
  //   for (var match in matches) {
  //     var codePoint = match.namedGroup('asciiValue') ?? match.namedGroup('codePoint');
  //     if (codePoint != null) {
  //       codePoints.add(int.parse(codePoint, radix: 16));
  //     } else {
  //       codePoints += match.group(0)!.runes.toList();
  //     }
  //   }
  //   var decoded = String.fromCharCodes(codePoints);
  //   print(decoded);
  // }
}
