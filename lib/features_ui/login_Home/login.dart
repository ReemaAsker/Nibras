// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class Login extends StatefulWidget {
//   const Login({Key? key}) : super(key: key);

//   @override
//   State<Login> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage("images/bb.jpg"),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Container(
//             padding: EdgeInsets.all(40),
//             margin: EdgeInsets.all(40),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(30),
//               color: Colors.white54,
//             ),
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Center(
//                       child: const Image(image: AssetImage("images/logo.png"))),
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'اسم المستخدم : ',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             TextField(
//                               decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: const BorderSide(
//                                     color: Colors.black,
//                                   ),
//                                   borderRadius: BorderRadius.circular(10.0),
//                                 ),
//                                 labelText: 'اسم المستخدم',
//                                 focusedBorder: OutlineInputBorder(
//                                   borderSide: const BorderSide(
//                                       color: Colors.black, width: 2.0),
//                                   borderRadius: BorderRadius.circular(10.0),
//                                 ),
//                                 border: OutlineInputBorder(
//                                     borderSide: BorderSide(
//                                       color: Colors
//                                           .red, // Set your custom border color here
//                                     ),
//                                     borderRadius: BorderRadius.circular(10)),
//                                 hintText: 'ادخل اسم المستخدم',
//                                 hintStyle: TextStyle(color: Colors.black),
//                                 labelStyle: TextStyle(color: Colors.black),
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Center(
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               const Text(
//                                 'كلمة المرور  : ',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 10,
//                               ),
//                               TextField(
//                                 obscureText: true, // Password text field

//                                 decoration: InputDecoration(
//                                   enabledBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                       color: Colors.black,
//                                     ),
//                                     borderRadius: BorderRadius.circular(10.0),
//                                   ),
//                                   focusedBorder: OutlineInputBorder(
//                                     borderSide:
//                                         const BorderSide(color: Colors.black),
//                                     borderRadius: BorderRadius.circular(10.0),
//                                   ),
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10)),
//                                   labelText: 'كلمة المرور',
//                                   hintText: 'ادخل كلمة المرور',
//                                   labelStyle: TextStyle(color: Colors.black),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Center(
//                     child: Padding(
//                       padding: EdgeInsets.all(30),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           backgroundColor:
//                               const Color(0xffffc200), // background color
//                           foregroundColor: Colors.black,
//                           // text color
//                           elevation: 5, // button's elevation when it's pressed
//                         ),
//                         onPressed: () {},
//                         child: Text(
//                           'تسجيل الدخول',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ]),
//           ),
//         ),
//       ),
//     );
//   }
// }
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nibras_test/features_ui/login_Home/home_page.dart';
import 'package:nibras_test/widgets/backgroundScreen.dart';
import 'package:nibras_test/widgets/custom_text_feild.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white54,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: const Center(
                        child: Image(image: AssetImage("images/logo.png"))),
                  ),
                  const CustomTextField(
                    label: 'اسم المستخدم',
                    hintText: 'ادخل اسم المستخدم',
                  ),
                  const CustomTextField(
                    label: 'كلمة المرور',
                    hintText: 'ادخل كلمة المرور',
                    obscureText: true,
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffffc200),
                          foregroundColor: Colors.black,
                          elevation: 5,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        child: const Text(
                          'تسجيل الدخول',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
