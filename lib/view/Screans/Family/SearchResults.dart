
import 'package:ahlachat/util/Localization.dart';
import 'package:ahlachat/util/helperclass.dart';
import 'package:ahlachat/util/styles.dart';
import 'package:ahlachat/view/Screans/Family/FamilyProfileScrean.dart';
import 'package:ahlachat/viewmodels/Family_ViewModel/Family_ViewModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class SearchFamilyResults extends StatelessWidget {
  const SearchFamilyResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    FamilyViewModel  Family=Provider.of<FamilyViewModel>(context,listen:  true);

    return Scaffold(
      appBar: AppBar(  leading: IconButton(
        icon: const Icon(Icons.navigate_before, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ), title:   Text(getLang(context: context, key: "Search_Family"),style: style4.copyWith(height: 1,color: Colors.black87,fontWeight: FontWeight.normal)),centerTitle: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child:   ListView.builder(physics: const BouncingScrollPhysics(),itemCount: Family.SearchFamily.length,itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(top: 10),

          child:InkWell(
            onTap: () {


              Family.GetFamily(Val: Family.SearchFamily[index]);
              navigateTo(context: context,screen: const FamilyProfileScrean());


            },
            child: Container(color: Colors.white54,child: Row(
              children: [
                CircleAvatar(backgroundColor: Colors.transparent,radius: 23,backgroundImage: CachedNetworkImageProvider(Family.SearchFamily[index].image??'')),
                const SizedBox(width: 10,),
                Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(Family.SearchFamily[index].name??''),
                    Container(decoration: BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(10)),child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        children: [
                          if(Family.SearchFamily[index].model!=null)CachedNetworkImage(imageUrl:Family.SearchFamily[index].model??'',height: 20,width: 40, ),

                          Row(mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.person,color: Colors.black,size: 15) ,
                              const SizedBox(width: 5,),
                              Text(Family.SearchFamily[index].nubmers?.toString()??'',style: style5.copyWith(fontSize: 13,height: 1),)
                            ],
                          ),
                        ],
                      ),
                    ),),
                  ],
                ),

                const Spacer(),
                ],



            )),
          ),

        ),),
      ),
    );
  }
}
