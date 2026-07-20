

import 'package:ahlachat/models/AgencyModel.dart';
import 'package:ahlachat/models/FamilyModel.dart';
import 'package:ahlachat/models/JoinRoomModel.dart';
import 'package:ahlachat/models/MyVip.dart';
import 'package:ahlachat/models/PostsModel.dart';
import 'package:ahlachat/models/RelationModel.dart';
import 'package:ahlachat/models/RoomModel.dart';
import 'package:ahlachat/models/StartBannerModel.dart';
import 'package:ahlachat/models/UsarImages.dart';
import 'package:ahlachat/models/UserModels.dart';
import 'package:ahlachat/models/gifts.dart';
import 'package:ahlachat/util/app_constants.dart';

class usermodel {
  int? id;
  String? image;
  String? frameimage;
  String? SuporrtedImage;
  String?Enterbubles;
  String? entry;
  String? phoneNumber;
  int?Hidden;
  int?MessageNumber=0;
  String? name;
  String? year;
  var Newid;
  var ColoredMessage;
  var bubbles;
  String? day;
  String? month;
  String? social;
  String? city;
  String? email;
  String? socialToken;
  String? notifiToken;
  String? rememperToken;
  String? ginder;
  String? description;
  int? coins;
  int? Karisma=0;
  int? Input;
  int ?ChairKarisma=0;
  int?followers;
  int?following;
  int?friends;
  int?FriendState;
  int?visitors=0;
  int?Level=0;
  int?AgencyId=0;
  int?AgencyKarisma=0;
  String? faceBook;
  String? instgram;
  String? myappid;
    var  password;
  String? createdAt;
  String? updatedAt;
  List<Gifts>? giftssent=[];
  List<Gifts>? giftscollect=[];
  List<String> ?followIds=[];
  List<int> ?joinsrequested=[];
  List<Postes>? Postuser;
  String? Flag;
  MyVipmodel ?MyVip;
  RoomModel ? currentroom;
  RoomModel ? MyRoom;
  var  music;
  Agencymodel? agency;
  joinRoom? CurrentRoom;
  int?FamilyKarisma;
  var FamilyId;
  var FamilyModels;
  var FamilyAdmin;
  List<int>   ?FamilyRequests =[];
  FamilyModel? MyFamil;
  List <UserModels> ?Models=[];
  List <RelationModel> ?Relations=[];
  List <UserImages> ?ProfileImages=[];
int?ginput=0;
  int?Official=0;
  int?Admin=0;
  int?SuperAdmin=0;
  int?MemberAgency=0;

  int?Announcer=0;
  int?DB=0;
  int?MoneyAgency=0;
  int?CustomersService=0;
  int?Supporter=0;
StartBannerModel ?StarterBanner;
  int? ban=0;
  usermodel(
      {this.id,
        this.ban,
        this.Announcer,
        this.DB,
        this.Official,
        this.Admin,
        this.SuperAdmin,
        this.Models,this.ProfileImages,
        this.MemberAgency,
        this.MoneyAgency,
        this.Supporter,
        this.CustomersService,
        this.FamilyKarisma,
        this.FamilyAdmin,
        this.StarterBanner,
        this.FamilyId,
        this.Relations,
        this.FamilyRequests,
        this.MyFamil,
        this.FamilyModels,
        this.MyRoom,
        this.Flag,
        this.image,
        this.Postuser,
        this.phoneNumber,
        this.name,
        this.year,
        this.day,
        this.AgencyId,
        this.month,
        this.social,
        this.email,
        this.Enterbubles,
        this.FriendState,
        this.socialToken,
        this.notifiToken,
        this.rememperToken,
        this.ginder,
        this.description,
        this.coins,
        this.faceBook,
        this.instgram,
        this.joinsrequested,
        this.Hidden,
        this.MessageNumber,
        this.password,
        this.AgencyKarisma,
        this.SuporrtedImage,
        this.visitors,
        this.createdAt,
        this.myappid,
        this.city,
        this.	frameimage,
        this.entry,
        this.giftssent,
        this.giftscollect,
        this.Input,
        this.Karisma,
        this.ChairKarisma,
        this.followers,
        this.following,
        this.friends,
        this.followIds,
        this.Level,
        this.ginput,
        this.MyVip,
        this.Newid,
        this.ColoredMessage,
        this.bubbles,

        this.currentroom,
        this.agency,
        this.music,
        this.CurrentRoom
      });

  usermodel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = AppConstants.Image_URL+json['image'];
    phoneNumber = json['phone_number'].toString();
    entry=json['entry']==null?'':AppConstants.Image_URL+json['entry'];
    name = json['name'];
    AgencyId=json['AgencyId'];
    ColoredMessage=json['ColoredMessage'];
    bubbles=json['bubbles'];
    FriendState=json['FriendState']??0;
    CurrentRoom = json['myjoindroom'] != null ?   joinRoom .fromJson(json['myjoindroom']) : null;
    StarterBanner= json['StartBanner'] != null ?   StartBannerModel .fromJson(json['StartBanner']) : null;
     year = json['year'].toString();
    day = json['day'].toString();
    MessageNumber=json['MessageNumber'];
    Hidden=json['Hidden'];
    Newid=json['Newid'];
    month = json['month'].toString();
    social = json['social'];
    email = json['email'];
    Level= json['Level'];
    FamilyKarisma=json['FamilyKarisma'];
    FamilyAdmin=json['FamilyAdmin'];
    FamilyId=json['FamilyId'];
    FamilyModels=json['FamilyModel'];
    MyRoom = json['myroom'] != null ? RoomModel.fromJson(json['myroom']) : null;

    MyFamil=json['family'] != null ? FamilyModel.fromJson(json['family']) : null;
    music=json['music']==null?null:AppConstants.Image_URL+json['music'];
    socialToken = json['social_token'];
    notifiToken = json['notifi_token'].toString();
    rememperToken = json['userToken'] ?? '';

    ginder =json['ginder'].toString();
    AgencyKarisma=json['AgencyKarisma'];
    description = json['description'];
    followers=json['followers'] ?? 0;
    following=json['following'] ?? 0;
    friends=json['friends'] ?? 0;
    visitors=json['visitors'] ?? 0;
    coins = json['coins'] ?? 0;
    Flag= json['Flag'];
    Official=json['Official'];
    Admin=json['Admin'];
    SuperAdmin=json['SuperAdmin'];
    Announcer=json['Announcer'];
    DB=json['db'];
    MemberAgency=json['MemberAgency'];
    MoneyAgency=json['MoneyAgency'];
    Supporter=json['Supporter'];
     ban=json['ban'];
    CustomersService=json['CustomersService'];
    MyVip = json['myvip'] != null ? MyVipmodel.fromJson(json['myvip']) : null;
    agency= json['agency'] != null ? Agencymodel.fromJson(json['agency']) : null;
    currentroom = json['currentroom'] != null ? RoomModel.fromJson(json['currentroom']) : null;
    if (json['giftssent'] != null) {
      giftssent = <Gifts>[];
      json['giftssent'].forEach((v) {
        giftssent!.add(Gifts.fromJson(v));
      });
    }

    if (json['models'] != null) {
      Models = <UserModels>[];
      json['models'].forEach((v) {
        Models!.add(UserModels.fromJson(v));
      });
    }

    if (json['Relations'] != null) {
      Relations = <RelationModel>[];
      json['Relations'].forEach((v) {
        Relations!.add(RelationModel.fromJson(v));
      });
    }
    if (json['profile_image'] != null) {
      ProfileImages = <UserImages>[];
      json['profile_image'].forEach((v) {
        ProfileImages!.add(UserImages.fromJson(v));
      });
    }
    if (json['Postes'] != null) {
      Postuser = <Postes>[];
      json['Postes'].forEach((v) {
        Postuser!.add(Postes.fromJson(v));
      });
    }else{
      Postuser=[];
    }

    if (json['followIds'] != null) {
      followIds = <String>[];
      json['followIds'].forEach((v) {
        followIds!.add(v);
      });
    }
    if (json['JoinAgencyids'] != null) {
      joinsrequested = <int>[];
      json['JoinAgencyids'].forEach((v) {
        joinsrequested!.add(v);
      });
    }
    if (json['familyrequest'] != null) {
      FamilyRequests = <int>[];
      json['familyrequest'].forEach((v) {
        FamilyRequests!.add(v);
      });
    }


    if (json['giftscollect'] != null) {
      giftscollect = <Gifts>[];
      json['giftscollect'].forEach((v) {
        giftscollect!.add(Gifts.fromJson(v));
      });
    }
    Karisma=json['Karisma'];
    ChairKarisma=json['ChairKarisma'];
    Input=json['Input'];

    ginput=json['ginput'];
    faceBook = json['FaceBook'];
    instgram = json['Instgram'];
    createdAt = json['created_at']??'';
    myappid=json['myappid'];
    password=json['PassApp'];
    city=json['city'];
    frameimage=json['frameimage']==null?'':AppConstants.Image_URL+json['frameimage'];
    Enterbubles=json['Enterbubles']==null?'':AppConstants.Image_URL+json['Enterbubles'];

    SuporrtedImage=json['SuporrtedImage']==null?null:AppConstants.Image_URL+json['SuporrtedImage'];
    Hidden=json['Hidden'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['phone_number'] = phoneNumber;
    data['AgencyKarisma'] = AgencyKarisma;
    data['name'] = name;
    data['Hidden'] = Hidden;
    data['followers'] =followers;
    data['following'] =following;
    data['friends'] =friends;
    data['year'] =  year  ;
    data['MessageNumber']=MessageNumber;
    data['ginput']=ginput;
    data['AgencyId'] =AgencyId;
    data['Newid']= Newid;
    data['Supporter']= Supporter;
    data['ban']=ban;
    data['ChairKarisma']=ChairKarisma;
    data['Level']=  Level  ;
    data['day']=  day  ;
    data['bubbles']= bubbles;
    data['ColoredMessage']=  ColoredMessage  ;
    data['agency']=  agency ;
    data['month']=  month;
    data['followIds']=followIds;
    data['JoinAgencyids']=joinsrequested;
    data['Official']= Official;

    data['db']= DB;
    data['Announcer']= Announcer;

    data['Admin']= Admin;
    data['SuperAdmin']= SuperAdmin;
    data['MemberAgency']= MemberAgency;
    data['Supporter']= Supporter;
    data['PassApp']= password;
    data['MoneyAgency']= MoneyAgency;
    data['CustomersService']= CustomersService;

    data['familyrequest']= FamilyRequests;

    if (MyFamil != null) {
      data['family'] = MyFamil!.toJson();
    }
    if (MyRoom != null) {
      data['myroom'] = MyRoom!.toJson();
    }
    data['social'] = social;
    data['email'] = email;
    data['Flag']=Flag;
    data['social_token'] = socialToken;
    data['notifi_token'] = notifiToken;
    data['music']=music;
    data['userToken'] = rememperToken;
    data['ginder'] = ginder;
    data['description'] = description;
    data['coins'] = coins;
    data['FriendState'] =FriendState;
    data['visitors']=  visitors;
    data['FaceBook'] = faceBook;
    data['Instgram'] = instgram;

    data['created_at'] = createdAt;
    data['myappid']=myappid;
    data['city']=city;
    data['giftssent']=giftssent;
    data['giftscollect']=giftscollect;
    data['frameimage']=frameimage;
    data['Enterbubles']=Enterbubles;
    data['Input']=Input;
    data['Karisma']=Karisma;
    data['entry']=entry;
    data['Postes']=Postuser;
    data['models']=Models;
    data['profile_image']=Models;
    data['myjoindroom']=CurrentRoom;
    if (MyVip != null) {
      data['MyVip'] = MyVip!.toJson();
    }
    if (StarterBanner != null) {
      data['StartBanner'] = StarterBanner!.toJson();
    }
    if (currentroom != null) {
      data['currentroom'] = currentroom!.toJson();
    }
    return data;
  }
}