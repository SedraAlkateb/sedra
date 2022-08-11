import 'package:care4sure/components/components.dart';
import 'package:care4sure/model/menuitem.dart';
import 'package:flutter/material.dart';

import '../../view_model/menuitemvm.dart';

class Notification1 extends StatefulWidget {
  const Notification1({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _Notification1State createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        elevation: 0.0,
        titleSpacing: 53.0,
        title: const Text(
          "LOGO",
          style: TextStyle(
            color: Color(0XFF243162),
          ),
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
        leading: IconButton(
          onPressed: () {
          },
          icon: const Icon(Icons.arrow_back_ios,
              size: 31.0, color: Color(0XFF243162)),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[300],
           height: 10.0,
          ),
          SingleChildScrollView(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: 6,
              itemBuilder: (context, index) => listnotification("shhhhhhhhhhhhhhhhhbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbhhhhhhhhhhhhf"),
            ),
          ),
        ],
      ),
    );
  }
}
