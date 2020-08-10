//import 'dart:convert';
//import 'package:flutter/material.dart';
//import 'package:video_player/video_player.dart';
//
//String listingsToJson(List<Listings> data) =>
//    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
//class Listings extends StatelessWidget {
//  String listingId;
//  String title;
//  String description;
//  String type;
//  String mediaUrl;
//  String mediaType;
//  DateTime time;
//  String pricePerUnit;
//  String url;
//
//  Listings({
//    this.listingId,
//    this.title,
//    this.description,
//    this.type,
//    this.mediaUrl,
//    this.mediaType,
//    this.time,
//    this.pricePerUnit,
//    this.url,
//  });
//
//  factory Listings.fromJson(Map<String, dynamic> json) => Listings(
//        listingId: json["LISTING_ID"],
//        title: json["TITLE"],
//        description: json["DESCRIPTION"],
//        type: json["TYPE"],
//        mediaUrl: json["MEDIA_URL"],
//        mediaType: json["MEDIA_TYPE"],
//        time: DateTime.parse(json["TIME"]),
//        pricePerUnit: json["PRICE_PER_UNIT"],
//        url: json["URL"],
//      );
//
//  Map<String, dynamic> toJson() => {
//        "LISTING_ID": listingId,
//        "TITLE": title,
//        "DESCRIPTION": description,
//        "TYPE": type,
//        "MEDIA_URL": mediaUrl,
//        "MEDIA_TYPE": mediaType,
//        "TIME": time.toIso8601String(),
//        "PRICE_PER_UNIT": pricePerUnit,
//        "URL": url,
//      };
//
//  @override
//  Widget build(BuildContext context) {
//    return Stack(
//      alignment: Alignment.center,
//      fit: StackFit.expand,
//      overflow: Overflow.clip,
//      children: <Widget>[
//        //for Image
//        Opacity(
//          opacity: (mediaType == "image") ? 1 : 0,
//          child: InkWell(
//            onTap: () {
//              debugPrint("tapped image no $listingId");
//            },
//            child: FadeInImage.assetNetwork(
//                placeholder: "lib/img/loader.gif",
//                placeholderScale: 0.5,
//                image: mediaUrl,
//                fit: BoxFit.cover),
//          ),
//        ),
//        //for Video
//        Opacity(
//          opacity: (mediaType == "video") ? 1 : 0,
//          child: AspectRatio(
//            aspectRatio: 16 / 9,
//            child: VideoPlayer(VideoPlayerController.network(mediaUrl)
//              ..setVolume(1.0)
//              ..initialize()),
//          ),
//        ),
//      ],
//    );
//  }
//}
