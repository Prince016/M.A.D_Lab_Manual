import 'package:firstapp/screens/after_reg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';

// class RegistrationScreen extends StatefulWidget {
//   RegistrationScreen({Key? key}) : super(key: key);

//   @override
//   State<RegistrationScreen> createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   final _formKey = GlobalKey<FormState>();
//   bool isConditionAccepted = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//           image: DecorationImage(
//               // colorFilter: ColorFilter.mode(Colors.black45.withOpacity(0.3), BlendMode.dstATop),
//               // colorFilter: ColorFilter.mode(  , BlendMode.dstATop),
//               fit: BoxFit.cover,
//               image: AssetImage("assests/images/bg_2.jpg"))),
//       child: SafeArea(
//         child: Material(
//           color: Colors.transparent,
//           child: Padding(
//             padding: const EdgeInsets.all(18),
//             child: Form(
//               autovalidateMode: AutovalidateMode.onUserInteraction,
//               key: _formKey,
//               child: Column(
//                 // mainAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   SizedBox(
//                     height: 15,
//                   ),
//                   Text(
//                     "Registration Form",
//                     style: TextStyle(
//                       fontSize: 35,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text('Join us to explore new World '),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   CircleAvatar(
//                     radius: 54,
//                     backgroundColor: Colors.blue,
//                     child: CircleAvatar(
//                       radius: 50,
//                       child: const Text(
//                         "R",
//                         style: TextStyle(fontSize: 30),
//                       ),
//                       backgroundColor: Colors.blue.shade900,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   TextFormField(
//                     style: TextStyle(fontSize: 20),
//                     decoration: InputDecoration(
//                       isDense: true,
//                       label: Text("Name"),
//                       hintText: "enter your name",
//                       labelStyle:
//                           TextStyle(fontSize: 20, color: Colors.blueAccent),
//                            errorBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.purple)),
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(width: 2, color: Colors.blue)),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Colors.red)),
//                     ),
//                     validator: (String? value){
//                       if(value == null || value.isEmpty){
//                         return " This is a Required Field";
//                       }
//                       if(value.length<4){
//                         return 'should be greater than 4 ';
//                       }
//                       return null;
//                     },
//                   ),
//                   SizedBox(height: 30,),
//                   Checkbox(

//                     value: isConditionAccepted, onChanged: (value){
//                     print(value);
//                     setState(() {
//                       isConditionAccepted= true;
//                     });
//                   },),
//                   Text("Accecpt Conditions"),
//                   SizedBox(height: 30,),
//                   RawMaterialButton(

//                     constraints: BoxConstraints.tightFor(width: double.infinity, height: 40),
//                     // shape: CircleBorder(),
//                     shape: RoundedRectangleBorder(
//                       side: BorderSide(width: 4, color: Colors.blue),
//                       borderRadius: BorderRadius.circular(50),
//                     ),
//                     // fillColor: Colors.blue.shade900,
//                     fillColor: Color(0xfff5bf63),
//                     onPressed: (){
//                       if(_formKey.currentState!.validate()){
//                        _formKey.currentState!.save();
//                       }
//                     },
//                     child: Text("Register",style: TextStyle(fontSize: 20,color: Colors.white),),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// // =====================================================================================================================================

// import 'package:flutter/material.dart';

// class FormScreen extends StatefulWidget {
//   const FormScreen({Key? key}) : super(key: key);

//   @override
//   _FormScreenState createState() => _FormScreenState();
// }

// enum Gender {
//   male,
//   female,
//   other,
// }

// class _FormScreenState extends State<FormScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final Map<String, dynamic> hobbies = {
//     "Mobile Application Devolopment": false,
//     "Devops": false,
//     "SEPM": false,
//     "Theory Of Computation": false,
//   };
//   Gender selectedGender = Gender.male;
//   bool isIndian = false;

//   //location
//   final List<String> locations = ['1st_Year', '2nd_Year', '3rd_Year'];
//   String selectedLocation = "Year";

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).unfocus();
//       },
//       child: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//                 Colors.black.withOpacity(0.4), BlendMode.dstATop),
//             image: const AssetImage("assets/images/background.jpeg"),
//           ),
//         ),
//         child: Material(
//           color: Colors.transparent,
//           child: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Form(
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 key: _formKey,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const SizedBox(height: 20),
//                       CircleAvatar(
//                         radius: 74,
//                         backgroundColor: Colors.blue,
//                         child: CircleAvatar(
//                           radius: 70,
//                           backgroundColor: Colors.blue.shade100,
//                           child: Image.network("https://media.istockphoto.com/photos/register-button-picture-id133903186?k=6&m=133903186&s=612x612&w=0&h=PR0zPKEMuSETXTRkNWtYFjkyJjfa5XVUtw76GbgW698="),
//                           // child: const Text(
//                           //   "A",
//                           //   style: TextStyle(
//                           //     fontSize: 50,
//                           //     fontWeight: FontWeight.w600,
//                           //   ),
//                           // ),
//                         ),
//                       ),
//                       const Text(
//                         "Registration Form",
//                         style: TextStyle(
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       // const Text("register your self to have fun"),
//                       const SizedBox(height: 30),
//                       TextFormField(
//                         style: const TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: Color.fromARGB(255, 0, 0, 0),
//                         ),
//                         decoration: InputDecoration(
//                           suffixIcon: Icon(
//                             Icons.person,
//                             color: Colors.blue.shade200,
//                             size: 30,
//                           ),
//                           labelText: "Name",
//                           labelStyle: const TextStyle(color: Colors.blue),
//                           hintText: "Enter your name",
//                           hintStyle: TextStyle(
//                             color: Colors.blue.shade300,
//                           ),
//                           isDense: true,
//                           filled: true,
//                           // fillColor: const Color(0xFF0E3311).withOpacity(0.5),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                               color: Colors.blue,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                               color: Colors.blue,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                               color: Colors.red,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           focusedErrorBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                               color: Colors.red,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                         ),
//                         validator: (String? value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Name can\'t be empty';
//                           }
//                           if (value.length < 6) {
//                             return 'Name length must be > 6';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                       TextFormField(
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w600,
//                             color: Color.fromARGB(255, 0, 0, 0),
//                           ),
//                           decoration: InputDecoration(
//                             suffixIcon: Icon(
//                               Icons.email_sharp,
//                               color: Colors.blue.shade200,
//                               size: 30,
//                             ),
//                             labelText: "Email",
//                             labelStyle: const TextStyle(color: Colors.blue),
//                             hintText: "Enter your email",
//                             hintStyle: TextStyle(
//                               color: Colors.blue.shade300,
//                             ),
//                             isDense: true,
//                             filled: true,
//                             // fillColor: const Color(0xFF0E3311).withOpacity(0.5),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.blue,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.blue,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             errorBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.red,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             focusedErrorBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.red,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                           ),
//                           validator: (String? value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter email';
//                             }
//                           }),
//                       const SizedBox(height: 20),
//                       TextFormField(
//                           obscureText: true,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w600,
//                             color: Color.fromARGB(255, 0, 0, 0),
//                           ),
//                           decoration: InputDecoration(
//                             suffixIcon: Icon(
//                               Icons.password,
//                               color: Colors.blue.shade200,
//                               size: 30,
//                             ),
//                             labelText: "Password",
//                             labelStyle: const TextStyle(color: Colors.blue),
//                             hintText: "Enter your password",
//                             hintStyle: TextStyle(
//                               color: Colors.blue.shade300,
//                             ),
//                             isDense: true,
//                             filled: true,
//                             // fillColor: const Color(0xFF0E3311).withOpacity(0.5),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.blue,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.blue,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             errorBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.red,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             focusedErrorBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.red,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                           ),
//                           validator: (String? value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter password';
//                             }
//                           }),
//                       const SizedBox(height: 20),
//                       const Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Select Subjects",
//                           textAlign: TextAlign.start,
//                           style: TextStyle(fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       _buildHobbiesWidget(),
//                       const SizedBox(height: 20),
//                       const Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Select Gender",
//                           textAlign: TextAlign.start,
//                           style: TextStyle(fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       RadioListTile(
//                         value: Gender.male,
//                         groupValue: selectedGender,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedGender = value as Gender;
//                           });
//                         },
//                         title: const Text("Male"),
//                       ),
//                       RadioListTile(
//                         value: Gender.female,
//                         groupValue: selectedGender,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedGender = value as Gender;
//                           });
//                         },
//                         title: Text("Female"),
//                       ),
//                       RadioListTile(
//                         value: Gender.other,
//                         groupValue: selectedGender,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedGender = value as Gender;
//                           });
//                         },
//                         title: Text("Other"),
//                       ),
//                       const SizedBox(height: 20),
//                       // DropdownButtonFormField<String>(
//                       //     autovalidateMode: AutovalidateMode.onUserInteraction,
//                       //     decoration: InputDecoration(
//                       //       filled: true,
//                       //       // fillColor: const Color(0xFF0E3311).withOpacity(0.5),
//                       //       isDense: true,
//                       //       enabledBorder: OutlineInputBorder(
//                       //         borderSide: const BorderSide(
//                       //           color: Colors.blue,
//                       //           width: 2,
//                       //         ),
//                       //         borderRadius: BorderRadius.circular(50),
//                       //       ),
//                       //     ),
//                       //     value: selectedLocation,
//                       //     isExpanded: true,
//                       //     items: locations
//                       //         .map(
//                       //           (location) => DropdownMenuItem<String>(
//                       //             value: location,
//                       //             child: Text(location),
//                       //           ),
//                       //         )
//                       //         .toList(),
//                       //     onChanged: (value) {
//                       //       selectedLocation = value!;
//                       //     }),
//                       // const SizedBox(height: 20),
//                       Row(
//                         children: [
//                           const Text("Send Response on E-mail"),
//                           Switch.adaptive(
//                               value: isIndian,
//                               onChanged: (value) {
//                                 setState(
//                                   () {
//                                     isIndian = value;
//                                   },
//                                 );
//                               }),
//                         ],
//                       ),
//                       const SizedBox(height: 40),
//                       RawMaterialButton(
//                         fillColor: Colors.blue,
//                         constraints: const BoxConstraints.expand(
//                           width: double.infinity,
//                           height: 40,
//                         ),
//                         shape: RoundedRectangleBorder(
//                             side: const BorderSide(
//                               color: Colors.white,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50)),
//                         onPressed: () {
//                           if (_formKey.currentState!.validate()) {
//                             _formKey.currentState!.save();
//                           }

//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => After_Register()),
//                           );
//                         },
//                         child: const Text(
//                           "SUBMIT",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   _buildHobbiesWidget() {
//     return ListView(
//       shrinkWrap: true,
//       children: hobbies.keys.map((String key) {
//         return CheckboxListTile(
//           controlAffinity: ListTileControlAffinity.leading,
//           value: hobbies[key],
//           onChanged: (value) {
//             setState(() {
//               hobbies[key] = value;
//             });
//           },
//           title: Text(key),
//         );
//       }).toList(),
//     );

//     // return hobbies
//     //     .map((hobby) => CheckboxListTile(
//     //           value: false,
//     //           onChanged: (value) {},
//     //           title: Text(hobby),
//     //         ))
//     //     .toList();
//   }
// }

// ===========================================Prashant ================================================================================================

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

enum Gender {
  male,
  female,
  other,
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final Map<String, dynamic> hobbies = {
    "Football": false,
    "Cricket": false,
    "Kabbadi": false,
    "Kusti": false,
  };
  Gender selectedGender = Gender.male;
  bool isIndian = false;

  //location
  final List<String> locations = ['Delhi', 'Mumbai', 'Kolkata'];
  String selectedLocation = "Delhi";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.dstATop),
            image: const AssetImage("assets/images/background.jpeg"),
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Text(
                        "",
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // const Text("register your self to have fun"),
                      const SizedBox(height: 30),

                      TextFormField(
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.email,
                              color: Colors.black,
                              size: 30,
                            ),
                            labelText: "Email",
                            labelStyle: const TextStyle(color: Colors.black),
                            hintText: "Enter your email",
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            isDense: true,
                            filled: true,
                            // fillColor: const Color(0xFF0E3311).withOpacity(0.5),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter email';
                            }
                          }),
                      const SizedBox(height: 20),
                      TextFormField(
                          obscureText: true,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.security,
                              color: Colors.black,
                              size: 30,
                            ),
                            labelText: "Password",
                            labelStyle: const TextStyle(color: Colors.black),
                            hintText: "Enter your password",
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            isDense: true,
                            filled: true,
                            // fillColor: const Color(0xFF0E3311).withOpacity(0.5),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            }
                          }),

                      SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary:  Colors.black ,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => After_Register()),
                          );
                        },
                        child: const Text(
                          ' Login ',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildHobbiesWidget() {
    return ListView(
      shrinkWrap: true,
      children: hobbies.keys.map((String key) {
        return CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          value: hobbies[key],
          onChanged: (value) {
            setState(() {
              hobbies[key] = value;
            });
          },
          title: Text(key),
        );
      }).toList(),
    );

    // return hobbies
    //     .map((hobby) => CheckboxListTile(
    //           value: false,
    //           onChanged: (value) {},
    //           title: Text(hobby),
    //         ))
    //     .toList();
  }
}














// ===============================================Register ===================================================


// // 
// import 'package:flutter/material.dart';

// class FormScreen extends StatefulWidget {
//   const FormScreen({Key? key}) : super(key: key);

//   @override
//   _FormScreenState createState() => _FormScreenState();
// }

// enum Gender {
//   male,
//   female,
//   other,
// }

// class _FormScreenState extends State<FormScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final Map<String, dynamic> hobbies = {
//     "Football": false,
//     "Cricket": false,
//     "Kabbadi": false,
//     "Kusti": false,
//   };
//   Gender selectedGender = Gender.male;
//   bool isIndian = false;

//   //location
//   final List<String> locations = ['Delhi', 'Mumbai', 'Kolkata'];
//   String selectedLocation = "Delhi";

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         FocusScope.of(context).unfocus();
//       },
//       child: Container(
//         height: double.infinity,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             colorFilter: ColorFilter.mode(
//                 Colors.black.withOpacity(0.4), BlendMode.dstATop),
//             image: const AssetImage("assets/images/background.jpeg"),
//           ),
//         ),
//         child: Material(
//           color: Colors.transparent,
//           child: SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Form(
//                 autovalidateMode: AutovalidateMode.onUserInteraction,
//                 key: _formKey,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const SizedBox(height: 20),
//                       CircleAvatar(
//                         radius: 74,
//                         backgroundColor: Colors.blue,
//                         child: CircleAvatar(
//                           radius: 70,
//                           backgroundColor: Colors.blue.shade100,
//                           child: const Text(
//                             "P",
//                             style: TextStyle(
//                               fontSize: 50,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                         ),
//                       ),
//                       const Text(
//                         "Registration Form",
//                         style: TextStyle(
//                           fontSize: 35,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       // const Text("register your self to have fun"),
//                       const SizedBox(height: 30),
//                       TextFormField(
//                         style: const TextStyle(
//                           fontWeight: FontWeight.w600,
//                           color: Color.fromARGB(141, 0, 0, 0),
//                         ),
//                         decoration: InputDecoration(
//                           suffixIcon: Icon(
//                             Icons.account_circle_outlined,
//                             color: Color.fromARGB(255, 108, 81, 232),
//                             size: 30,
//                           ),
//                           labelText: "Name",
//                           labelStyle: const TextStyle(color: Colors.blue),
//                           hintText: "Enter your name",
//                           hintStyle: TextStyle(
//                             color: Colors.blue,
//                           ),
//                           isDense: true,
//                           filled: true,
//                           // fillColor: conasdst Color(0xFF0E3311).withOpacity(0.5),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                               color: Colors.blue,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                               color: Colors.blue,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           errorBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                               color: Colors.red,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                           focusedErrorBorder: OutlineInputBorder(
//                             borderSide: const BorderSide(
//                               color: Colors.red,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50),
//                           ),
//                         ),
//                         validator: (String? value) {
//                           if (value == null || value.isEmpty) {
//                             return 'Name can\'t be empty';
//                           }
//                           if (value.length < 6) {
//                             return 'Name length must be > 6';
//                           }
//                           return null;
//                         },
//                       ),
//                       const SizedBox(height: 20),
//                       TextFormField(
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w600,
//                             color: Color.fromARGB(255, 0, 0, 0),
//                           ),
//                           decoration: InputDecoration(
//                             suffixIcon: Icon(
//                               Icons.email,
//                               color: Colors.blue.shade200,
//                               size: 30,
//                             ),
//                             labelText: "Email",
//                             labelStyle: const TextStyle(color: Colors.blue),
//                             hintText: "Enter your email",
//                             hintStyle: TextStyle(
//                               color: Colors.blue.shade300,
//                             ),
//                             isDense: true,
//                             filled: true,
//                             // fillColor: const Color(0xFF0E3311).withOpacity(0.5),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.blue,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.blue,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             errorBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.red,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             focusedErrorBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.red,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                           ),
//                           validator: (String? value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter email';
//                             }
//                           }),
//                       const SizedBox(height: 20),
//                       TextFormField(
//                           obscureText: true,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.w600,
//                             color: Color.fromARGB(255, 0, 0, 0),
//                           ),
//                           decoration: InputDecoration(
//                             suffixIcon: Icon(
//                               Icons.security,
//                               color: Colors.blue.shade200,
//                               size: 30,
//                             ),
//                             labelText: "Password",
//                             labelStyle: const TextStyle(color: Colors.blue),
//                             hintText: "Enter your password",
//                             hintStyle: TextStyle(
//                               color: Colors.blue.shade300,
//                             ),
//                             isDense: true,
//                             filled: true,
//                             // fillColor: const Color(0xFF0E3311).withOpacity(0.5),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.blue,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.blue,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             errorBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.red,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                             focusedErrorBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.red,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                           ),
//                           validator: (String? value) {
//                             if (value == null || value.isEmpty) {
//                               return 'Please enter password';
//                             }
//                           }),
//                       const SizedBox(height: 20),
//                       const Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Select Hobbies",
//                           textAlign: TextAlign.start,
//                           style: TextStyle(fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       _buildHobbiesWidget(),
//                       const SizedBox(height: 20),
//                       const Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "Select Gender",
//                           textAlign: TextAlign.start,
//                           style: TextStyle(fontWeight: FontWeight.w600),
//                         ),
//                       ),
//                       RadioListTile(
//                         value: Gender.male,
//                         groupValue: selectedGender,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedGender = value as Gender;
//                           });
//                         },
//                         title: const Text("Male"),
//                       ),
//                       RadioListTile(
//                         value: Gender.female,
//                         groupValue: selectedGender,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedGender = value as Gender;
//                           });
//                         },
//                         title: Text("Female"),
//                       ),
//                       RadioListTile(
//                         value: Gender.other,
//                         groupValue: selectedGender,
//                         onChanged: (value) {
//                           setState(() {
//                             selectedGender = value as Gender;
//                           });
//                         },
//                         title: Text("Other"),
//                       ),
//                       const SizedBox(height: 20),
//                       DropdownButtonFormField<String>(
//                           autovalidateMode: AutovalidateMode.onUserInteraction,
//                           decoration: InputDecoration(
//                             filled: true,
//                             // fillColor: const Color(0xFF0E3311).withOpacity(0.5),
//                             isDense: true,
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: const BorderSide(
//                                 color: Colors.blue,
//                                 width: 2,
//                               ),
//                               borderRadius: BorderRadius.circular(50),
//                             ),
//                           ),
//                           value: selectedLocation,
//                           isExpanded: true,
//                           items: locations
//                               .map(
//                                 (location) => DropdownMenuItem<String>(
//                                   value: location,
//                                   child: Text(location),
//                                 ),
//                               )
//                               .toList(),
//                           onChanged: (value) {
//                             selectedLocation = value!;
//                           }),
//                       const SizedBox(height: 20),
//                       Row(
//                         children: [
//                           const Text("Are you Indian?"),
//                           Switch.adaptive(
//                               value: isIndian,
//                               onChanged: (value) {
//                                 setState(
//                                   () {
//                                     isIndian = value;
//                                   },
//                                 );
//                               }),
//                         ],
//                       ),
//                       const SizedBox(height: 40),
//                       RawMaterialButton(
//                         fillColor: Colors.blue,
//                         constraints: const BoxConstraints.expand(
//                           width: double.infinity,
//                           height: 40,
//                         ),
//                         shape: RoundedRectangleBorder(
//                             side: const BorderSide(
//                               color: Colors.white,
//                               width: 2,
//                             ),
//                             borderRadius: BorderRadius.circular(50)),
//                         onPressed: () {
//                           if (_formKey.currentState!.validate()) {
//                             _formKey.currentState!.save();
//                           }

//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => After_Register()),
//                           );
//                         },
//                         child: const Text(
//                           "SUBMIT",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   _buildHobbiesWidget() {
//     return ListView(
//       shrinkWrap: true,
//       children: hobbies.keys.map((String key) {
//         return CheckboxListTile(
//           controlAffinity: ListTileControlAffinity.leading,
//           value: hobbies[key],
//           onChanged: (value) {
//             setState(() {
//               hobbies[key] = value;
//             });
//           },
//           title: Text(key),
//         );
//       }).toList(),
//     );

//     // return hobbies
//     //     .map((hobby) => CheckboxListTile(
//     //           value: false,
//     //           onChanged: (value) {},
//     //           title: Text(hobby),
//     //         ))
//     //     .toList();
//   }
// }
