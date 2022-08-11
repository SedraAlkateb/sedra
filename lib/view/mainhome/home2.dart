import 'package:care4sure/components/components.dart';
import 'package:care4sure/view/rush.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../model/listview.dart';

// ignore: must_be_immutable
class Home2 extends StatelessWidget {
  final searchcontroller = TextEditingController();
 List<ListViewm>  listt =[l,l,l,l,l,l,l];
static ListViewm l=ListViewm(image: const Image(
                  image: AssetImage("images/sedra.jpg"),
                ),pharmacyName: "serda",pharmacyWebsite: "alkateb");
   Home2({Key? key}) : super(key: key);
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
                    itemBuilder: (context, index) =>listpharm(listt[index].pharmacyName!,listt[index].pharmacyWebsite!,listt[index].image!),
                  ),
                ),
              ),
            ],
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
/*child: FutureBuilder<List<PostViewModel>>(
          future: pp.fetchAllPosts(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              var posts = snapshot.data;
              return ListView.builder(
                itemCount: posts?.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(posts![index].pharmacyName),
                ),
              );
            }
          },
        ), */