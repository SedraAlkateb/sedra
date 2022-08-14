import 'package:care4sure/components/components.dart';
import 'package:care4sure/model/menuitem.dart';
import 'package:care4sure/view/mainhome/home1.dart';
import 'package:care4sure/view/mainhome/home2.dart';
import 'package:flutter/material.dart';

import '../../view_model/menuitemvm.dart';
import '../notification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchcontroller = TextEditingController();

  final searchcontroller1 = TextEditingController();


  var value = "";

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
            leading: IconButton(
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
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: getTabBar(context).preferredSize,
              child: Material(
                color: const Color(0xff293462),
                child: getTabBar(context),
              ),
            ),
          ),
          body: TabBarView(children: [
            //HomeScreen1();
            Home2(),
            const Home1(),
          ])),
    );
  }
}
/*   body:
 */