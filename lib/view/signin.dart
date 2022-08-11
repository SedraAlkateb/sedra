// ignore_for_file: override_on_non_overriding_member, unused_field

import 'package:care4sure/view/mainhome/home.dart';
import 'package:care4sure/view/signup.dart';
import 'package:care4sure/view_model/signin_veiwmodel.dart';
import 'package:flutter/material.dart';
import 'package:care4sure/components/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: camel_case_types
class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

// ignore: camel_case_types
class _signinState extends State<signin> {
  @override
 String _userName = "", _password = "";
   var svm =signin_viewmodel();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  String truepass = "";
  String mas = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Container(
           decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("signin.png"),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    text(
                      text: AppLocalizations.of(context)!.login1,
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        onSaved: (value) => _userName = value!,
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          labelText: AppLocalizations.of(context)!.email,
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40.0),
                            ),
                          ),
                          prefixIcon: const Icon(
                            Icons.email,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "email musn't be empty";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26.0),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                        onSaved: (value) => _password = value!,
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.password,
                            border: const OutlineInputBorder(
                              borderRadius:  BorderRadius.all(
                                 Radius.circular(40.0),
                              ),
                            ),
                            prefixIcon: const Icon(
                              Icons.remove_red_eye,
                            ),
                            suffixIcon: const Icon(
                              Icons.lock,
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "email musn't be password";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        color: const Color(0xFF00818A),
                      ),
                      width: double.infinity,
                      height: 53.0,
                      child: MaterialButton(
                        child: text(
                            text: AppLocalizations.of(context)!.login2,
                            fs: 16.0,
                            c: Colors.white),
                        onPressed: () {
                          if (mas == "Passowrd error , Please try again") {
                            truepass = "mas";
                          } else {
                            if (formKey.currentState!.validate()) {
                           // svm.ss("sa","Asa","asa","asa");
                             // ignore: avoid_print
                             print(svm.email);
                              Navigator.push(
                              
                                  context,
                                  MaterialPageRoute(
                                    
                                    builder: (context) => const HomeScreen(),
                                  ));
                            }
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const signup(),
                            ));
                      },
                      child: text(
                          text: AppLocalizations.of(context)!.registernow,
                          fs: 18.0),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      "truepass",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
