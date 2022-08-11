// ignore_for_file: sized_box_for_whitespace
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../components/components.dart';

// ignore: must_be_immutable
class RushSceen extends StatefulWidget {


  const RushSceen({Key? key}) : super(key: key);

  @override
  State<RushSceen> createState() => _RushSceenState();
}

class _RushSceenState extends State<RushSceen> {
File? image;
Future pickImage()async{
  try{ 
     final image=await ImagePicker().pickImage(source: ImageSource.gallery);
  if(image==null)return;
  final imageTemporary=File(image.path);
  setState(()=> this.image=imageTemporary);
  }on PlatformException catch (e){
    // ignore: avoid_print
    print("object $e");
  }
 
}

  @override
  
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              titleSpacing: 53.0,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notification_important,
                  color: Color(0XFF243162),
                ),
              ),
              title: const Text(
                "LOGO",
                style: TextStyle(
                  color: Color(0XFF243162),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: Color(0XFF243162),
                  ),
                ),
              ],
              centerTitle: true,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5.0,
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey[600],
                    child: IconButton(
                      iconSize: double.infinity,
                      onPressed: () {
                        pickImage();
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 200,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20.0,
                      ),
                      text(
                          text: "صورة الراشيتا التي تحتوي الدواء",
                          c: Colors.black,
                          fs: 20.0,
                          fw: FontWeight.normal),

                      const SizedBox(height: 70.0),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            defaultButton(
                              function: () {
                                image !=null;
                                
                                
                              },
                              textt: "تأكيد",
                              isUpperCase: false,
                              width: 100.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
