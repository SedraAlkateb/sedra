import 'package:care4sure/view/pharmacy.dart';
import 'package:care4sure/view/pharmacy1.dart';
import 'package:care4sure/view_model/postsvm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context) {
      return PostsViewModel();
  } ,
      child: MaterialApp(
        title: "Care4Sure",
        theme: ThemeData(
        
        ), 
        home:const Pharmacy1(),
       
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales:AppLocalizations.supportedLocales,
    
      ),
    );
  }
}
