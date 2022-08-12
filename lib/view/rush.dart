// ignore_for_file: sized_box_for_whitespace
import 'dart:io';

import 'package:care4sure/view/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../components/components.dart';
import '../model/menuitem.dart';
import '../view_model/menuitemvm.dart';

// ignore: must_be_immutable
class RushSceen extends StatefulWidget {


  const RushSceen({Key? key}) : super(key: key);

  @override
  State<RushSceen> createState() => _RushSceenState();
}

class _RushSceenState extends State<RushSceen> {
File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      // ignore: avoid_print
      print("object $e");
    }
  }

  @override
  
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            titleSpacing: 53.0,
            leading: IconButton(
              onPressed: () {
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notification1(),
                          ));
                
              },
              icon: const Icon(
                Icons.notification_important,
                color: Color(0XFF243162),
              ),
            ),
          title:   Container(
          height: 100,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("logo.png"),
                          fit: BoxFit.none,
                          )),
                ),
           actions: [
              PopupMenuButton<MenuItemm>(
                icon: const Icon(Icons.menu_outlined,
                    size: 31.0, color: Color(0XFF243162)),
                offset: const Offset(50, 50),
                onSelected: (item) => onSelected(context, item),
                itemBuilder: (context) =>
                    MenuItems.itemFirst.map(buildItem).toList(),
              ),
              const SizedBox(
                height: 10,
              )
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
                  width: double.infinity,
                  color: Colors.grey[600],
                  child: IconButton(
                    
                    iconSize: 100,
                
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
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: text(
                          text: "صورة الراشيتا التي تحتوي الدواء",
                          c: Colors.black,
                          fs: 20.0,
                          fw: FontWeight.normal),
                    ),

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
    );
  }
}
