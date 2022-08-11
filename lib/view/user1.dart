// ignore_for_file: prefer_const_constructors

import 'package:care4sure/components/components.dart';
import 'package:care4sure/view/notification.dart';
import 'package:flutter/material.dart';

class User1 extends StatefulWidget {
  const User1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _User1State createState() => _User1State();
}

class _User1State extends State<User1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF8F9F9),
          elevation: 0.0,
          titleSpacing: 53.0,
          title: const Text(
            "LOGO",
            style: TextStyle(
              color: Color(0XFF243162),
            ),
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
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: const AssetImage("s.png"),
                          fit: BoxFit.fill,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.3),
                              BlendMode.darken))),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                CircleAvatar(
                    maxRadius: 10.0,
                    backgroundColor: Color(0xFF00818a),
                    child: icon(Icons.person, 21, Color(0xFFFFFFFF))),
                Text(
                  "name",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: "input name",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.edit,
                  size: 17,
                  color: Color(0xFF216583),
                ),
              ),
            ),
            Row(
              children: [
                icon(Icons.location_on, 21, Color(0xFF00818a)),
                SizedBox(width: 5.0,),
                Text(
                  "position",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(children: [
               TextFormField(
              decoration: InputDecoration(
                labelText: "input city",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.edit,
                  size: 17,
                  color: Color(0xFF216583),
                ),
              ),
            ),
            SizedBox(width: 10.0,),
              Text(
                  "city",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),

            ],),
            SizedBox(
              height: 20.0,
            ),
               Row(children: [
               TextFormField(
              decoration: InputDecoration(
                labelText: "input aria",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.edit,
                  size: 17,
                  color: Color(0xFF216583),
                ),
              ),
            ),
            SizedBox(width: 10.0,),
              Text(
                  "aria",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),

            ],),
            SizedBox(
              height: 20.0,
            ),
               Row(children: [
               TextFormField(
              decoration: InputDecoration(
                labelText: "input street",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.edit,
                  size: 17,
                  color: Color(0xFF216583),
                ),
              ),
            ),
            SizedBox(width: 10.0,),
              Text(
                  "street",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),

            ],),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                icon(Icons.email,21,  Color(0xFF00818a)),
                 Text(
                  "Email",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
              TextFormField(
              decoration: InputDecoration(
                labelText: "input Email",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.edit,
                  size: 17,
                  color: Color(0xFF216583),
                ),
              ),
            ) ,
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                icon(Icons.password,21,  Color(0xFF00818a)),
                 Text(
                  "Password",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
              TextFormField(
              decoration: InputDecoration(
                labelText: "input Password",
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(22.0),
                  ),
                ),
                prefixIcon: const Icon(
                  Icons.edit,
                  size: 17,
                  color: Color(0xFF216583),
                ),
              ),
            ),

          ],
        ));
  }
}
