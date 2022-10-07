import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:avatar_view/avatar_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextStyle _textStyle = TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold);
  File? file;

  ImagePicker image = ImagePicker();

  // File? _imageFile;
  // final _picker =ImagePicker();


  Widget FormView() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(

        children: [

          TextFormField(
            keyboardType: TextInputType.text,
            style: _textStyle,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelStyle: TextStyle(color: Colors.white70),
              labelText: 'Name',
            ),
          ),

          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: _textStyle,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelStyle: TextStyle(color: Colors.white70),
              labelText: 'Email',),
          ),

          TextFormField(
            keyboardType: TextInputType.number,
            style: _textStyle,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelStyle: TextStyle(color: Colors.white70),
              labelText: 'Phone Number',
            ),
          ),
ExpansionTile(title: Text('Professional details',style: _textStyle,),

children: [
  TextFormField(
    keyboardType: TextInputType.text,
    style: _textStyle,
    decoration: InputDecoration(

      labelStyle: TextStyle(color: Colors.white70),
      labelText: 'Designation',
    ),
  ),
  TextFormField(
    keyboardType: TextInputType.text,
    style: _textStyle,
    decoration: InputDecoration(

      labelStyle: TextStyle(color: Colors.white70),
      labelText: 'Company Name',
    ),
  ),
  ExpansionTile(title: Text('Profession',style: _textStyle,))

],
)

          // SizedBox(height: 20,),
          // TextFormField(
          //   keyboardType: TextInputType.streetAddress,
          //   style: _textStyle,
          //   decoration: InputDecoration(
          //
          //     labelStyle: TextStyle(color: Colors.white70),
          //     labelText: 'Address',
          //     suffix: IconButton(onPressed: (){}, icon: Icon(Icons.expand_more,color: Colors.grey    ,))  ,
          //     border: OutlineInputBorder(),
          //   ),
          // ),
          // SizedBox(height: 20,),
          // TextField(
          //   keyboardType: TextInputType.text,
          //   style: _textStyle,
          //   decoration: InputDecoration(
          //
          //     labelStyle: TextStyle(color: Colors.white70),
          //     labelText: 'Educational Details',
          //     suffix: IconButton(onPressed: (){}, icon: Icon(Icons.expand_more,color: Colors.grey,)),
          //     border: OutlineInputBorder(),
          //   ),
          // ),
          // SizedBox(height: 20,),
          // TextField(
          //
          //   keyboardType: TextInputType.text,
          //   style: _textStyle,
          //   decoration: InputDecoration(
          //
          //     labelStyle: TextStyle(color: Colors.white70),
          //     labelText: 'Hobbies and interests',
          //     suffix: IconButton(onPressed: (){}, icon: Icon(Icons.expand_more,color: Colors.grey,)),
          //     border: OutlineInputBorder(),
          //   ),
          //
          // ),


          // Expanded(child: TextField(
          //
          // )),

        ],

      ),
    );
  }

  Widget ProfileView() {
    // return SizedBox(
    //   height: 120,


    child: return Stack(
      children: [
        // Container(
        //
        //   child: Center(
        //     child: CircleAvatar(
        //       radius: 60,
        //       backgroundColor: Colors.black,
        //       child: CircleAvatar(
        //
        //        backgroundColor: Colors.white,
        //         radius: 50,
        //
        //           child: file == null? Icon(Icons.person,size: 110,color: Colors.black,) :Image.file(file!,)
        //       // backgroundImage:
        //        // file == null? AssetImage('assets/sulaiman.jpg'):Image.file(file!,fit:BoxFit.fill)
        //        // _imageFile==null?
        //
        //            // :FileImage(
        //       //    File(pickedFile.path)),
        //          ),
        //     ),
        //   ),
        // ),
        // Positioned(
        //     top: 70,
        //
        //     left: 165,
        //   //  child: CircleAvatar(
        //       //backgroundColor: Colors.black,
        //       child: RawMaterialButton(
        //           elevation: 20,
        //           fillColor: Colors.white,
        //           child: Icon(FontAwesomeIcons.camera, color: Colors.black,),
        //           padding: EdgeInsets.all(5.0),
        //           shape: CircleBorder(),
        //           onPressed: () {
        //             showDialog(
        //                 context: context, builder: (BuildContext context) {
        //               return AlertDialog(title: Text('Choose Profile Photo'),
        //                 content: SingleChildScrollView(
        //                   child: ListBody(children: [
        //                     InkWell(splashColor: Colors.white, child: Row(
        //                       children: [
        //                         Padding(
        //                           padding: EdgeInsets.all(8.0),
        //                           child: IconButton(
        //                             icon: const Icon(Icons.camera),
        //                             onPressed: () {
        //                               getCam();
        //                             },
        //                             // async => _pickImageFromCamera(),
        //                             //   tooltip: "shoot picture",
        //
        //                           ),),
        //                         Text('Camera', style: TextStyle(fontSize: 18,
        //                             fontWeight: FontWeight.w500),)
        //                       ],
        //                     ),),
        //                     InkWell(splashColor: Colors.white, child: Row(
        //                         children: [
        //                           Padding(
        //                               padding: EdgeInsets.all(8.0),
        //                               child: IconButton(onPressed: () {
        //                                 getGall();
        //                               },
        //                                 // async=>_pickImageFromGallery(),
        //                                 icon: Icon(Icons.image),
        //                                 // tooltip: "Pick from gallery",),
        //                               )),
        //                           Text('Gallery', style: TextStyle(
        //                               fontSize: 18,
        //                               fontWeight: FontWeight.w500),)
        //
        //                         ]),),
        //                     // InkWell(splashColor: Colors.white,child: Row(
        //                     //   children: const  [
        //                     //     Padding(
        //                     //       padding: EdgeInsets.all(8.0),
        //                     //       child: Icon(Icons.remove_circle,color: Colors.red,),
        //                     //     ),
        //                     //     Text('Remove',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.red),)
        //                     //   ],
        //                     // ),),
        //                   ],),
        //                 ),
        //               );
        //             });
        //           }
        //       ),
        //     )


        AvatarView(
          radius: 60,
          borderWidth: 8,
          borderColor: Colors.black,
          avatarType: AvatarType.CIRCLE,
          backgroundColor: Colors.white,
           imagePath:
          "",
placeHolder:Container(
    child: Icon(Icons.error, size: 50,),),

          // errorWidget: Container(
          //   child: Icon(Icons.error, size: 50,),
          // ),
        ),
    CircleAvatar(
          //backgroundColor: Colors.black,
          child: RawMaterialButton(
              elevation: 20,
              fillColor: Colors.white,
              child: Icon(FontAwesomeIcons.camera, color: Colors.black,),
              padding: EdgeInsets.all(5.0),
              shape: CircleBorder(),
              onPressed: () {
                showDialog(
                    context: context, builder: (BuildContext context) {
                  return AlertDialog(title: Text('Choose Profile Photo'),
                    content: SingleChildScrollView(
                      child: ListBody(children: [
                        InkWell(splashColor: Colors.white, child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: IconButton(
                                icon: const Icon(Icons.camera),
                                onPressed: () {
                                  getCam();
                                },
                                // async => _pickImageFromCamera(),
                                //   tooltip: "shoot picture",

                              ),),
                            Text('Camera', style: TextStyle(fontSize: 18,
                                fontWeight: FontWeight.w500),)
                          ],
                        ),),
                        InkWell(splashColor: Colors.white, child: Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: IconButton(onPressed: () {
                                    getGall();
                                  },
                                    // async=>_pickImageFromGallery(),
                                    icon: Icon(Icons.image),
                                    // tooltip: "Pick from gallery",),
                                  )),
                              Text('Gallery', style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),)

                            ]),),
                        // InkWell(splashColor: Colors.white,child: Row(
                        //   children: const  [
                        //     Padding(
                        //       padding: EdgeInsets.all(8.0),
                        //       child: Icon(Icons.remove_circle,color: Colors.red,),
                        //     ),
                        //     Text('Remove',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.red),)
                        //   ],
                        // ),),
                      ],),
                    ),
                  );
                });
              }
          ),
    )
      ],

      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Icon(Icons.arrow_back),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          fixedColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.black,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                label: 'Cart'),
          ]),
      body:

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [

// PersonView(),
            ProfileView(),
            FormView(),


          ],
        ),
      ),
    );
  }

  getCam() async {
    var img = await image.getImage(source: ImageSource.camera);
    setState(() {
      file = File(img!.path);
    });
  }

//   Future<void> _pickImageFromCamera() async{
//    final pickedFile = await _picker.pickImage(source:ImageSource.camera);
//    if (pickedFile !=null){
//      setState(()=>this._imageFile =File(pickedFile.path));
//    }
//   }
//   Future<void> _pickImageFromGallery() async{
//     final pickedFile = await _picker.pickImage(source:ImageSource.camera);
//     if (pickedFile !=null){
//       setState(()=>this._imageFile =File(pickedFile.path));
//     }

  getGall() async {
    var img = await image.getImage(source: ImageSource.gallery);
    setState(() {
      file = File(img!.path);
    });
  }

}
