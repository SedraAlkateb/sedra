// ignore_for_file: prefer_const_constructors

import 'package:care4sure/components/components.dart';
import 'package:care4sure/view/notification.dart';
import 'package:flutter/material.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  
    final items1 = ['i1', 'i2', 'i3', 'i4', 'i5'];

  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF8F9F9),
          elevation: 0.0,
          titleSpacing: 60.0,
          title: Container(
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: const AssetImage("logo.png"),
              fit: BoxFit.none,
            )),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios,
                size: 21.0, color: Color(0XFF243162)),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Notification1(),
                    ));
              },
              icon: const Icon(Icons.add_alert_rounded,
                  size: 31.0, color: Color(0XFF243162)),
            ),
          ],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: const AssetImage("s.png"),
                      fit: BoxFit.fill,
                    )),
                  ),
                  Center(
                    child: Column(
                      children: [
                        CircleAvatar(
                            maxRadius: 50.0,
                            backgroundColor: Color(0xFF00818a),
                            child: icon(Icons.person, 21, Color(0xFFFFFFFF))),
                        Text(
                          "name",
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Column(
                  children: [
  Row(
                      children: [
                       
                         Text(
                          "city",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                          Expanded(
                          child: SizedBox(
                            height: 34.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                   
                       
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                       
                         Text(
                          "city",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                          Expanded(
                          child: SizedBox(
                            height: 34.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                   
                       
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                       
                         Text(
                          "city",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                          Expanded(
                          child: SizedBox(
                            height: 34.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                   
                       
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                       
                         Text(
                          "city",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                          Expanded(
                          child: SizedBox(
                            height: 34.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                   
                       
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                       
                         Text(
                          "city",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                          Expanded(
                          child: SizedBox(
                            height: 34.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                   
                       
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                       
                         Text(
                          "city",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                          Expanded(
                          child: SizedBox(
                            height: 34.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                   
                       
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                       
                         Text(
                          "city",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                          Expanded(
                          child: SizedBox(
                            height: 34.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                   
                       
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: [
                       
                         Text(
                          "city",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                          Expanded(
                          child: SizedBox(
                            height: 34.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                   
                       
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                        
                    Row(
                      children: [
                        
                         Text(
                          "city",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Expanded(
                          child:  Container(
                        height: 33,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.grey[400],
                         
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(                            value: value,
                            hint: const Text("area"),
                            icon:
                                const Icon(Icons.arrow_drop_down, color: Colors.grey),
                            isExpanded: true,
                            //isDense: true,
                            //  itemHeight: 20.0,
                            //    elevation: 0.4,
                            items: items1.map(buildMenuItem).toList(),
                            onChanged: (value) =>
                                setState(() => this.value = value),
                          ),
                        ),
                      ),
                  
                        ),
                        
                       
                      ],
                    ),
                     
              const SizedBox(
                height: 30.0,
              ),
               defaultButton(
                            function: () { 
                            },
                            textt: "تأكيد",
                            isUpperCase: false,
                            width: 181.0,
                            height: 31,
                          ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
