
import 'package:ahlachat/models/AchiveModel.dart';
import 'package:dio/dio.dart';


import '../../util/app_constants.dart';

import '../Moment_repositores/Moment_repository.dart';

class Levelapi extends MomentRepository {
  var dio = Dio(
    BaseOptions(
      baseUrl: AppConstants.BASE_URL,
      headers: {
        'Accept': 'application/json',
        'Connection': 'Keep-Alive',
        'Authorization':Token,
        'awqeASERQW':'8/325*mAIOEN',
        'userid':UserId.toString(),
        'UserIP':UserIP,
      },
    ),
  );
  List<AchiveModels> AchiveModelss=[];

  Future<List<AchiveModels> >  GetModels( )async {

    try {
      Response response2 = await dio.get(
        '/api/GetModels',
      );

      if (response2.statusCode == 200) {
        List list =response2.data['Models'];

        for (var element in list) {
          AchiveModelss.add(AchiveModels.fromJson(element));
        }


      }
    } catch (e) {
      print(e);

    }

    return AchiveModelss;

  }

}
