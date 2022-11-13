import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pcast/util/Appcolor.dart';
import 'package:pcast/util/apptext.dart';

class AppBaner extends StatelessWidget {
  const AppBaner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 280.00,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: ExactAssetImage("Assets/image/banner.jpeg"),
            fit: BoxFit.cover,
          ),
          borderRadius:
              BorderRadius.only(bottomLeft: Radius.circular(40))),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("Assets/image/banner.jpeg", fit: BoxFit.cover),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40)),
            // Clip it cleanly.
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.grey.withOpacity(0.1),
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(bottom: 35),
                  height: 150.00,
                  width: 300,
                  decoration: const BoxDecoration(
                      // color: Colors.black12,
                      image: DecorationImage(
                          image:
                              AssetImage("Assets/image/banner.jpeg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20))),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                        sigmaX: 1.5,
                        sigmaY: 1.5,
                        tileMode: TileMode.repeated),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 15, left: 20),
                          alignment: Alignment.topLeft,
                          child: const AppText(
                              text:
                                  "About flow and out \nmotivations",
                              fontWeight: FontWeight.w500,
                              fontsize: 19,
                              colors: Color(0xFFFFFFFF)),
                        ),
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: ListTile(
                                title: AppText(
                                    text: "22.12.22 ⌚ 22:22:22 ",
                                    fontWeight: FontWeight.normal,
                                    fontsize: 14,
                                    colors: AppColor.subTextColor),
                                subtitle: Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(
                                                  50),
                                          image: const DecorationImage(
                                              image: NetworkImage(
                                                  "https://media.istockphoto.com/id/1212960962/photo/young-handsome-man-with-beard-wearing-casual-sweater-and-glasses-over-blue-background.jpg?s=612x612&w=0&k=20&c=OROMM-bo6YlzmnsAfQZDyFfYAskJUHcDKE0XDNfKUwM="),
                                              fit: BoxFit.cover)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              margin: const EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(50),
                                  boxShadow: [
                                    BoxShadow(
                                      color: AppColor.buttonColorBlue,
                                      offset: const Offset(0, 1),
                                      blurRadius: 20,
                                      spreadRadius: 0.5,
                                    ),
                                  ],
                                  color: AppColor.buttonColorRed),
                              child: const Icon(
                                Icons.play_arrow_outlined,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
