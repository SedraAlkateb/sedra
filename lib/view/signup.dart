import 'package:care4sure/view/mainhome/home.dart';
import 'package:flutter/material.dart';
import 'package:care4sure/components/components.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// ignore: camel_case_types
class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

// ignore: camel_case_types
class _signupState extends State<signup> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final locationcontroller = TextEditingController();
  final usernamecontroller = TextEditingController();
  final streetcontroller = TextEditingController();
  final items1 = ['i1', 'i2', 'i3', 'i4', 'i5'];
  final items2 = ['j1', 'j2', 'j3', 'j4', 'j5'];
  var formKey = GlobalKey<FormState>();

  String? value;

  String? value1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: const AssetImage("signin.png"),
                fit: BoxFit.fill,
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.3), BlendMode.darken))),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Center(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      text(
                        text: AppLocalizations.of(context)!.signup,
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          controller: usernamecontroller,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.username1,
                            border: const OutlineInputBorder(
                              borderRadius:  BorderRadius.all(
                                 Radius.circular(53.0),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "username musn't be empty";
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
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.email,
                            border: const OutlineInputBorder(
                              borderRadius:  BorderRadius.all(
                                 Radius.circular(53.0),
                              ),
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
                        height: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.password,
                            border: const OutlineInputBorder(
                              borderRadius:  BorderRadius.all(
                                 Radius.circular(53.0),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please Enter New Password";
                            } else if (value.length < 8) {
                              return "Password must be atleast 8 characters long";
                            } else {
                              return null;
                            }
                          },
                          controller: passwordController,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                       Container(
                        height: 53,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: value,
                            hint: const Text("Governorate"),
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
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 53,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: value,
                            hint: const Text("City"),
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
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        height: 53,
                        padding:
                            const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: value1,
                            hint: const Text("Area"),
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Colors.grey,
                            ),
                            isExpanded: true,
                            items: items2.map(buildMenuItem).toList(),
                            onChanged: (value) =>
                                setState(() => value1 = value),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,
                        ),
                        child: TextFormField(
                          controller: streetcontroller,
                          decoration: InputDecoration(
                            labelText: AppLocalizations.of(context)!.street,
                            border: const OutlineInputBorder(
                              borderRadius:  BorderRadius.all(
                                 Radius.circular(53.0),
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Street musn't be empty";
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
                          color: const Color(0xFF00818a),
                        ),
                        width: double.infinity,
                        height: 53.0,
                        child: MaterialButton(
                          child: text(
                            text: AppLocalizations.of(context)!.signup,
                            fs: 16,
                          ),
                          onPressed: () {
                            if (value != null && value1 != null) {
                              if (formKey.currentState!.validate()) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    ));
                              }
                            }
                            //  print(userViewModel.userModel!.username);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
