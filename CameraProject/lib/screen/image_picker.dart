import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Image_Picker extends StatefulWidget {
  Image_Picker({Key? key}) : super(key: key);

  @override
  State<Image_Picker> createState() => _Image_PickerState();
}



class _Image_PickerState extends State<Image_Picker> {
  bool circular = false;
  // PickedFile _imageFile;
  final _globalkey = GlobalKey<FormState>();
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _globalkey,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          children: <Widget>[
            imageProfile(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  
  // widget imageProfile(){
  //   return Center(
  //     child: Stack(children: [
  //       CircleAvatar(
  //         radius: 80,
  //         backgroundColor: ,
  //       )
  //     ],),
  //   )
  // }


  Widget imageProfile() {
    return Center(
      child: Stack(children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage:const AssetImage("assets/profile.jpeg")
        ),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                builder: ((builder) => bottomSheet()),
              );
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.teal,
              size: 28.0,
            ),
          ),
        ),
      ]),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile photo",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            FlatButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }



  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.getImage(
      source: source,
    );
    setState(() {
      // _imageFile = pickedFile;
    });
  }
}











// =============================================== aastha ================================================================

// import 'dart:io';
// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(const MyApp());
// }




// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           // This is the theme of your application.
//           //
//           // Try running your application with "flutter run". You'll see the
//           // application has a pink toolbar. Then, without quitting the app, try
//           // changing the primarySwatch below to Colors.green and then invoke
//           // "hot reload" (press "r" in the console where you ran "flutter run",
//           // or simply save your changes to "hot reload" in a Flutter IDE).
//           // Notice that the counter didn't reset back to zero; the application
//           // is not restarted.
//           primarySwatch: Colors.pink,
//         ),
//         home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

//   File? image;

//   Future pickImage() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.gallery);

//       if(image == null) return;

//       final imageTemp = File(image.path);

//       setState(() => this.image = imageTemp);
//     } on PlatformException catch(e) {
//       print('Failed to pick image: $e');
//     }
//   }

//   Future pickImageC() async {
//     try {
//       final image = await ImagePicker().pickImage(source: ImageSource.camera);

//       if(image == null) return;

//       final imageTemp = File(image.path);

//       setState(() => this.image = imageTemp);
//     } on PlatformException catch(e) {
//       print('Failed to pick image: $e');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Image Selector"),
//       ),
//       body: Center(
//         child: FittedBox(
//           child: Column(
            
//             children: [
//               FittedBox(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     MaterialButton(
//                         color: Colors.pink,
//                         child: const Text(
//                             "Pick Image from Gallery",
//                           style: TextStyle(
//                             color: Colors.white70, fontWeight: FontWeight.bold
//                           )
//                         ),
//                         onPressed: () {
//                           pickImage();
//                         }
//                     ),
//                     SizedBox(height: 20,
//                     width: 20,),
//                     MaterialButton(
//                         color: Colors.pink,
//                         child: const Text(
//                             "Pick Image from Camera",
//                             style: TextStyle(
//                                 color: Colors.white70, fontWeight: FontWeight.bold
//                             )
//                         ),
//                         onPressed: () {
//                           pickImageC();
//                         }
//                     ),
//                     SizedBox(height: 20,),
                    
//                   ],
//                 ),
//               ),
//               Text("Aastha 19CSU003"),
//               Container(
//                 height: 400,
//                 width: 400,
//                 child: 
//               image != null ? Image.file(image!): Text("Pick Your Image"),

//               )
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }
