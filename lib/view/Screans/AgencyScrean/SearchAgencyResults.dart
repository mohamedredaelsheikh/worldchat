
import 'package:ahlachat/util/Localization.dart';
import 'package:ahlachat/util/helperclass.dart';
import 'package:ahlachat/util/styles.dart';
import 'package:ahlachat/view/Screans/MainScreans/ProfileScrean/MyagencyProfile.dart';

import 'package:ahlachat/view/widgets/AgecnySideInfo.dart';
import 'package:ahlachat/viewmodels/Agency_ViewModel/Agency_ViewModel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class SearchAgencyResults extends StatelessWidget {
  const SearchAgencyResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    AagencyViewModel  Agency=Provider.of<AagencyViewModel>(context,listen:  true);

    return Scaffold(
      appBar: AppBar(  leading: IconButton(
        icon: const Icon(Icons.navigate_before, color: Colors.black),
        onPressed: () => Navigator.of(context).pop(),
      ), title:   Text(getLang(context: context, key: "Search_Family"),style: style4.copyWith(height: 1,color: Colors.black87,fontWeight: FontWeight.normal)),centerTitle: false),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child:   ListView.builder(physics: const BouncingScrollPhysics(),itemCount: Agency.Searchagency.length,itemBuilder: (context, index) => Padding(

          padding: const EdgeInsets.only(top: 10),

          child:InkWell(
            onTap: () {


              Agency.GetAgencyinfo(context: context,info:Agency.Searchagency[index]);
              navigateTo(context: context, screen: const MyAgencyScrean());


            },
            child: Container(color: Colors.white54,child: Row(
              children: [
                CircleAvatar(backgroundColor: Colors.transparent,radius: 23,backgroundImage: CachedNetworkImageProvider(Agency.Searchagency[index].image??'')),
                const SizedBox(width: 10,),
                const SizedBox(width: 5,),
                AgencySideInfo(AgencyDate:Agency.Searchagency[index],TextColor: Colors.black,),
                const Spacer(),

                const Spacer(),
              ],



            )),
          ),

        ),),
      ),
    );
  }
}
