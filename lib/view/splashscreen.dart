import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        
        Container(
          color: const Color(0xFF293462),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("logo1.png"),
                    fit: BoxFit.contain,
                    
                  )),
                ),
              ),
          ),
        ),
      ],
    );
  }
}
