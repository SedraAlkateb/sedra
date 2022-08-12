import 'package:care4sure/components/components.dart';
import 'package:care4sure/view/rush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../model/listview.dart';

// ignore: must_be_immutable
class Home2 extends StatefulWidget {
static ListViewm l=ListViewm(image: const Image(
                  image: AssetImage("images/sedra.jpg"),
                ),pharmacyName: "serda",pharmacyWebsite: "alkateb");

  // ignore: prefer_const_constructors_in_immutables
  Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  final searchcontroller = TextEditingController();

 List<ListViewm>  listt =[Home2.l,Home2.l,Home2.l,Home2.l,Home2.l,Home2.l,Home2.l];
  final items1 = ['i1', 'i2', 'i3', 'i4', 'i5'];

  String? value;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 33.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(26.0),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    controller: searchcontroller,
                    decoration: InputDecoration(
                      labelText:
                          AppLocalizations.of(context)!.search_for_medicine,
                      border: const OutlineInputBorder(
                        borderRadius:  BorderRadius.all(
                           Radius.circular(40.0),
                        ),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ),
              ),

                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 33,
                          padding:
                              const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.grey[400],
                            
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: value,
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
                      
              const SizedBox(
                height: 15.0,
              ),
              text(
                  text: AppLocalizations.of(context)!
                      .pharmacies_that_contain_the_medicine,
                  c: Colors.black,
                  fs: 18.0),
              const SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) => Container(
                      width: double.infinity,
                      height: 3.0,
                      color: const Color(0xFFb5b4b4),
                    ),
                    itemCount: listt.length,
                    itemBuilder: (context, index) =>listpharm( context,listt[index].pharmacyName!,listt[index].pharmacyWebsite!,listt[index].image!),
                  ),
                ),
              ),
            ],
          ),
         Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              alignment: Alignment.bottomRight,
              child: IconButton(
                iconSize: 61,
                alignment: Alignment.center,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RushSceen(),
                      ));
                },
                icon: const Icon(
                  Icons.add_circle,
                  size: 61,
                  color: Color(0xFF026c73),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
