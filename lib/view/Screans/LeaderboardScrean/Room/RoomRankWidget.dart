import 'package:ahlachat/models/Leaderboardroommodel.dart';
import 'package:ahlachat/util/helperclass.dart';
import 'package:ahlachat/util/images.dart';
import 'package:ahlachat/util/styles.dart';
import 'package:ahlachat/viewmodels/Animated_Viewmodel/ElementViewModel.dart';
import 'package:ahlachat/viewmodels/Room_Viewmodel/Room_Viewmodel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoomRankWidget extends StatelessWidget {
  LeaderboardRoommodel? Leader;
  String image;

 RoomRankWidget({super.key, required this.Leader,required this.image});

  @override
  Widget build(BuildContext context) {
    RoomViewmodel Rooms=  Provider.of<RoomViewmodel>(context,listen: true);

    Provider.of<SvgViewmodel>(context,listen: true);
    return        Expanded(child: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: InkWell(onTap:() {

        Rooms.EnterRoom(id:Leader?.room?.id,adminId:Leader?.room?.adminId,context: context );



      },
        child: Container(height: 250,color: Colors.transparent,child: Stack(
          alignment: Alignment.center,
          children: [
            Container( width: 150, decoration: BoxDecoration(color: Colors.transparent,image: DecorationImage(image: ExactAssetImage(image),fit: BoxFit.cover)),),
            Positioned(top: 20,child: Column(mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(backgroundColor: Colors.transparent,radius:35,backgroundImage: CachedNetworkImageProvider(Leader?.room?.image??''),),
                const SizedBox(height: 8,),
                Text(Helper().CutName(Leader?.room?.name??''),style: style7.copyWith(fontWeight: FontWeight.normal,fontSize: 13)),
                const SizedBox(height: 10,),
                Container(decoration: BoxDecoration(color: Colors.white24,borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                    child: Row(
                      children: [
                        Text( Helper().k_m_b_generator(int.parse(Leader?.coins??''))  ,style: style7.copyWith(height: 1,fontSize:12)),
                        const SizedBox(width: 5,),
                        Image.asset(Images.coins,width: 13),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ],
        )),
      ),
    ));
  }
}
