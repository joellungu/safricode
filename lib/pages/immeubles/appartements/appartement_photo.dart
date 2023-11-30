import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:photo_view/photo_view.dart';
import 'package:safricode_glance/widgets/hostpot_animation.dart';

import 'appartement.dart';

class AppartementPhoto extends StatefulWidget {
  int index;
  String photo;
  List listPlan = [];
  //
  AppartementPhoto({
    super.key,
    required this.index,
    required this.photo,
    required this.listPlan,
  });

  @override
  State<AppartementPhoto> createState() => _AppartementPhoto();
}

class _AppartementPhoto extends State<AppartementPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(30),
              child: ListView(
                //mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(widget.listPlan.length, (index) {
                  return InkWell(
                    onTap: () {
                      //
                      Get.dialog(
                        Material(
                          color: Colors.transparent,
                          child: Container(
                            height: Get.size.height / 1.2,
                            width: Get.size.width / 1.2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.centerRight,
                                  height: 50,
                                  color: Colors.white,
                                  child: IconButton(
                                    color: Colors.grey,
                                    onPressed: () {
                                      //
                                      Get.back();
                                      //
                                    },
                                    icon: Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: PhotoView(
                                    imageProvider: AssetImage(
                                        "assets/${widget.listPlan[index]}"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Image.asset("assets/${widget.listPlan[index]}"),
                  );
                }),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: EdgeInsets.all(20),
              child: CarouselSlider(
                options: CarouselOptions(height: 500.0),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        //decoration: BoxDecoration(color: Colors.amber),
                        child: Image.asset(
                          'assets/IMG-20180223-WA001$i.jpg',
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
