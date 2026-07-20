

import 'package:flutter/material.dart';
import 'package:ahlachat/util/Localization.dart';
import 'package:ahlachat/util/SizeConfig.dart';
import 'package:ahlachat/util/styles.dart';
import 'package:ahlachat/viewmodels/Auth_Viewmodel/LoginViewModel.dart';
import 'package:ahlachat/viewmodels/Room_Viewmodel/Room_Viewmodel.dart';
import 'package:provider/provider.dart';

import '../../../widgets/CircleProgress.dart';
class AddRoomPassword extends StatelessWidget {
  const AddRoomPassword({Key? key}) : super(key: key);
   @override
  Widget build(BuildContext context) {
    RoomViewmodel Room=  Provider.of<RoomViewmodel>(context,listen: true);
    Provider.of<LoginViewmodel>(context,listen: true);

    return AnimatedPositioned(
        height:   Room.showloading18 ? SizeConfig.screenHeight! /2:0,
        left:0,
        top: 0.0,
        duration: const Duration(milliseconds: 300,),
        curve: Curves.fastOutSlowIn,
        child:  Container(decoration: const BoxDecoration(color: whitecolor ,borderRadius: BorderRadius.only(bottomRight:   Radius.circular(20),bottomLeft: Radius.circular(20) )),height: SizeConfig.screenHeight!,width: SizeConfig.screenWidth!,
            child:SingleChildScrollView(
              child:  Column(mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      InkWell(onTap: () {
                        print('asdas');
                        Room.hideSpinner18();

                      },child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(decoration: BoxDecoration( borderRadius: BorderRadius.circular(20)),child: const Icon(Icons.close,size:25,color: MainColor)),
                      ),
                      ),
                    const Spacer(),

                    ],
                  ),
                  const SizedBox(height: 20,),
                  SizedBox(width: SizeConfig.screenWidth , child: Row(
                    children: [
                      InkWell(onTap: () {
                        Room.hideSpinner18();
                        Room.PasswordRoom.clear();
                        Room.RemoveRoomPassword(context: context);

                      },child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(decoration: BoxDecoration(color: MainColor,borderRadius: BorderRadius.circular(20)),child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5,vertical:2),
                          child: Text(getLang(context: context, key: "Remove"),style: style6.copyWith(fontSize: 13,color: whitecolor),),
                        )),
                      ),
                      ),

                      const SizedBox(width: 10,),
                      Expanded(
                        child: TextFormField(onChanged: (v){

                        },controller:  Room.PasswordRoom , cursorColor: MainColor ,textAlign: TextAlign.center,decoration:InputDecoration(hintText: getLang(context: context,key: "RoomPassword"),  enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: MainColor),
                        ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(color: MainColor),
                          ),

                        ) ,),
                      ),
                      Text( getLang(context: context,key: "RoomPassword"),style: style6.copyWith(fontSize: 13,color: black1),textAlign: TextAlign.center),

                    ],
                  )),
                  const SizedBox(height: 40,),
                  Room.showloading19? const Center(child: CustomeCircleProgress()): InkWell(onTap: (){
                    if(Room.PasswordRoom.text.isEmpty)
                    {
                      Room.hideSpinner18();
                      Room. RemoveRoomPassword(context: context);

                    }else{
                      Room.hideSpinner18();
                      Room. SetRoomPassword(context: context);
                    }

                  },child: Center(child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) ,color: MainColor),child: Center(child: Text(getLang(context: context, key: "Done"),style:  style1,)),height:50,width: SizeConfig.screenWidth!,),
                  )))


                ],
              ),
            )



        ));
  }
}
