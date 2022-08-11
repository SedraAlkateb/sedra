import 'package:care4sure/model/listview.dart';
import 'package:care4sure/repo/posts/post_fake.dart';
import 'package:care4sure/view/rush.dart';
import 'package:care4sure/view_model/postsvm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
//import 'package:provider/provider.dart';

import '../../components/components.dart';

// ignore: must_be_immutable
class Home1 extends StatelessWidget {
  final searchcontroller = TextEditingController();
 List<ListViewm>  listt =[];
  var postsViewModel = PostsViewModel(postsRepository: PostsFake());

   Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   //PostsViewModel pp = context.watch<PostsViewModel>();
    return Padding(
      padding: const EdgeInsets.all(20.0),
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
                    //  iconColor: ,
                      labelText:
                          AppLocalizations.of(context)!.search_for_medicine,
                      border:const  OutlineInputBorder(
                        borderRadius:  BorderRadius.all(
                           Radius.circular(40.0),
                        ),
                      ),
                      prefixIcon:const Icon(
                        Icons.search,
                      ),
                    ),
                  ),
                ),
              ),
             const SizedBox(
                height: 30.0,
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
                    itemBuilder: (context, index) => listpharm(listt[index].pharmacyName!,listt[index].pharmacyWebsite!,listt[index].image!),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>   const RushSceen(),
                    ));
              },
              icon: const Icon(
                Icons.add_circle_sharp,
                color: Color(0XFF026C73),
                size: 61.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
