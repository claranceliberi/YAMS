// import 'package:flutter/material.dart';
// import 'package:dropdown_formfield/dropdown_formfield.dart';

// class PersonalInfo extends StatefulWidget {
//   @override
//   _PersonalInfoState createState() => _PersonalInfoState();
// }

// class _PersonalInfoState extends State<PersonalInfo> {
//    String _myActivity = "";
//   String _myActivityResult = ;
//   final formKey = new GlobalKey<FormState>();
//   @override
//   void initState() {
//     super.initState();
//     _myActivity = '';
//     _myActivityResult = '';
//   }
//   _saveForm() {
//     var form = formKey.currentState;
//     if (form && form.validate()) {
//       form.save();
//       setState(() {
//         _myActivityResult = _myActivity;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {

//     return Scaffold(
//        appBar: AppBar(
//         backgroundColor: Colors.white,
//         shadowColor: Colors.transparent,
//         title: Transform(
//             transform: Matrix4.translationValues(-1.0, 0.0, 0.0),
//             child: Image.asset(
//               "assets/logos/header-logo.png",
//             )),
//         automaticallyImplyLeading: false,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: Column(
//             children: <Widget>[
//               Text("Persnal information",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20
//                 ),
//               ),

//               Center(
//         child: Form(
//           key: formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 padding: EdgeInsets.all(16),
//                 child: DropDownFormField(

//                   titleText: 'ID type',
//                   hintText: 'Please choose one',
//                   value: _myActivity,
//                   onSaved: (value) {
//                     setState(() {
//                       _myActivity = value;
//                     });
//                   },
//                   onChanged: (value) {
//                     setState(() {
//                       _myActivity = value;
//                     });
//                   },
//                   dataSource: [
//                     {
//                       "display": "PASSPORT ID",
//                       "value": "PASSPORT ID",
//                     },
//                     {
//                       "display": "NATIONAL ID",
//                       "value": "NATIONAL ID",
//                     }
//                   ],
//                   textField: 'display',
//                   valueField: 'value',
//                 ),
//               ),
//               /*Saving selected value */
//               // Container(
//               //   padding: EdgeInsets.all(8),
//               //   child: RaisedButton(
//               //     child: Text('Save'),
//               //     onPressed: _saveForm,
//               //   ),
//               // ),

//               /*Accessing selected value*/
//               // Container(
//               //   padding: EdgeInsets.all(16),
//               //   child: Text(_myActivityResult),
//               // )
//             ],
//           ),
//         ),
//       ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
