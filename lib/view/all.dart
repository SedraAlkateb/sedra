import 'package:care4sure/components/components.dart';
import 'package:care4sure/view/notification.dart';
import 'package:care4sure/view/rush.dart';
import 'package:flutter/material.dart';

class AllMed extends StatefulWidget {
  const AllMed({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AllMedState createState() => _AllMedState();
}

class _AllMedState extends State<AllMed> {
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
       leading: 
             IconButton(
          onPressed: () {
          },
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
      body: Stack(
                alignment: AlignmentDirectional.bottomEnd,

        children: [
          Padding(
            padding: const EdgeInsets.all( 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 5.0,
                  color: Colors.grey[300],
                ),
                              const SizedBox(height: 30.0,),

                const Text(
                "All medicines",
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30.0,),
                SingleChildScrollView(
                  child: ListView.separated(
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => Container(
                      width: double.infinity,
                      height: 2.0,
                      color: const Color(0xFF707070),
                    ),
                     itemCount: 6,
                    itemBuilder: (context, index) => listmedicin("sedra", "position"),
                  ),
                ),
              ],
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RushSceen(),
                    ));
              },
              icon: const Padding(
                padding: EdgeInsets.only(right: 80,bottom: 80),
                child: Icon(
                  Icons.add_circle_sharp,
                  color: Color(0XFF026C73),
                  size: 61.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
