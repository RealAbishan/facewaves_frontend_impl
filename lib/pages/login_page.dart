import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facewaves_frontend/constants/AppColors.dart';
import 'package:facewaves_frontend/pages/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';
import 'package:facewaves_frontend/authControllers/auth_controller.dart';
class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  var emailController =  TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        resizeToAvoidBottomInset : false,
      backgroundColor: bWhite,
       body: Column(
         children: [
           Container(
             width: width,
             height: height * 0.3,
             decoration: BoxDecoration(
               image: DecorationImage(
                 image: AssetImage(
                   "assets/TwoBg.jpg"
                 ),
                 fit: BoxFit.cover
               ),
             ),
           ),

           Container(
             margin: const EdgeInsets.only(left:20, right: 20),
             width: width,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("Hello",
                 style: TextStyle(
                   fontSize: 70,
                   fontWeight: FontWeight.bold
                 ),
                 ),
                 Text("Sign In to your Account",
                   style: TextStyle(
                       fontSize: 24,
                     color: Colors.grey[500]
                   ),
                 ),

                 SizedBox(height: 50,),
                 Container(
                   decoration: BoxDecoration(
                     color: bWhite,
                     borderRadius: BorderRadius.circular(30),
                     boxShadow: [
                       BoxShadow(
                         blurRadius: 10,
                         spreadRadius: 7,
                         offset: Offset(1,1),
                         color: Colors.grey.withOpacity(0.2)
                       )
                     ]
                   ),
                   child:TextField(
                     controller: emailController,
                     decoration: InputDecoration(
                         hintText: "Please Enter Your Email",
                         prefixIcon: Icon(Icons.email, color: kPrimaryColor,),
                         focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(30),
                             borderSide: BorderSide(
                                 color: bWhite
                             )
                         ),

                         enabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(30),
                             borderSide: BorderSide(
                                 color: bWhite
                             )
                         ),

                         border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(30)
                         )
                     ),
                   )
                 ),
                 SizedBox(height: 20,),
                 Container(
                     decoration: BoxDecoration(
                         color: bWhite,
                         borderRadius: BorderRadius.circular(30),
                         boxShadow: [
                           BoxShadow(
                               blurRadius: 10,
                               spreadRadius: 7,
                               offset: Offset(1,1),
                               color: Colors.grey.withOpacity(0.2)
                           )
                         ]
                     ),
                     child:TextField(
                       controller: passwordController ,
                       obscureText: true,
                       decoration: InputDecoration(
                           hintText: "Please Enter Your Password",
                           prefixIcon: Icon(Icons.lock, color: kPrimaryColor,),
                           focusedBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(30),
                               borderSide: BorderSide(
                                   color: bWhite
                               )
                           ),

                           enabledBorder: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(30),
                               borderSide: BorderSide(
                                   color: bWhite
                               )
                           ),

                           border: OutlineInputBorder(
                               borderRadius: BorderRadius.circular(30)
                           )
                       ),
                     )
                 ),
                 SizedBox(height: 20,),
                 Row(
                   children: [
                     Expanded(child: Container(),),
                     Text("Forgot Your Password?",
                       style: TextStyle(
                           fontSize: 20,
                           color: Colors.grey[500]
                       ),
                     ),
                   ],
                 )


               ],
             ),
           ),

           SizedBox(height: 50 ,),
           GestureDetector(
             onTap: (){
               AuthController.instance.logInUser(emailController.text.trim(),
                   passwordController.text.trim());
             },
             child: Container(
               child: GestureDetector(
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
                           left: 135,
                           top: 15,
                           child: Text(
                             "Sign In",
                             style: TextStyle(
                                 fontSize: 24,
                                 color: kPrimaryColor,
                                 fontWeight: FontWeight.bold),
                           )),
                     ],
                   ),
                 ),
               ),
             ),
           ),

           SizedBox(height: width * 0.08,),

           RichText(text: TextSpan(
             text: "Don\'t have an Account?",
             style: TextStyle(
               color: Colors.grey[500],
               fontSize: 20
             ),
             children: [
               TextSpan(
               text: " Create",
               style: TextStyle(
                   color: kPrimaryColor,
                   fontSize: 20,
                 fontWeight: FontWeight.bold
               ),
                  recognizer: TapGestureRecognizer()..onTap =()=>Get.to(()
                  =>SignupPage())
               ),
             ]
           ))




         ],
       )
    );
  }
}
