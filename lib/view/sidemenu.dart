// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Container(
             decoration: BoxDecoration(
            image: DecorationImage(
              image:const AssetImage("images/sidemenu1.png"),
                fit: BoxFit.none,
                )),
          ),
           Container(
             decoration: BoxDecoration(
            image: DecorationImage(
              image:const AssetImage("images/sidemenu2.png"),
                fit: BoxFit.none,
                )),
          ),
          Column(
               mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: CircleAvatar(
                        maxRadius: 40.0,
                          child: ClipOval(
                            child: Image.asset(
                              'images/sedra.jpg',
                              fit: BoxFit.cover,
                              width: 150.0,
                              height: 200,
                            ),
                          ),
                        ),
                    ),
                         const Text(
                        "Sedra",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                  ],
                ),
              ),
              
              Column(
                   mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: ListTile(
                      leading: const Icon(Icons.person,size: 36,),
                      title:    Text(
                         AppLocalizations.of(context)!.profile,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      // ignore: avoid_returning_null_for_void
                      onTap: () => null,
                    ),
                  ),
                     
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: const Icon(Icons.medical_information,size: 36),
                  title:  Text(
                        AppLocalizations.of(context)!.drug,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                  // ignore: avoid_returning_null_for_void
                  onTap: () => null,
                ),
              ),
                
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: ListTile(
                  leading: const Icon(Icons.logout_outlined,size: 36),
                  title:   Text(
                         AppLocalizations.of(context)!.signout,                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                  // ignore: avoid_returning_null_for_void
                  onTap: () => null,
                ),
              ),
                ],
              ),
             
            ],
          ),
        ],
      ),
    );
  }
}