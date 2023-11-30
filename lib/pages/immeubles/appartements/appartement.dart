import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_widget_3d/carousel_widget_3d.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:photo_view/photo_view.dart';

class Appartement extends StatefulWidget {
  int index;
  String photo;
  List listPlan = [];
  //
  Appartement({
    super.key,
    required this.index,
    required this.photo,
    required this.listPlan,
  });

  @override
  State<Appartement> createState() => _Appartement();
}

class _Appartement extends State<Appartement> {
  RxInt choix = 4.obs;
  RxString photo = "".obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Plans photo",
                      style: style(),
                    ),
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(widget.listPlan.length, (index) {
                      return InkWell(
                        onTap: () {
                          //
                          photo.value = "${widget.listPlan[index]}";
                          choix.value = 0;
                          // Get.dialog(
                          //   Material(
                          //     color: Colors.transparent,
                          //     child: Container(
                          //       height: Get.size.height / 1.2,
                          //       width: Get.size.width / 1.2,
                          //       child: Column(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Container(
                          //             alignment: Alignment.centerRight,
                          //             height: 50,
                          //             color: Colors.white,
                          //             child: IconButton(
                          //               color: Colors.grey,
                          //               onPressed: () {
                          //                 //
                          //                 Get.back();
                          //                 //
                          //               },
                          //               icon: Icon(
                          //                 Icons.close,
                          //                 color: Colors.black,
                          //               ),
                          //             ),
                          //           ),
                          //           Expanded(
                          //             child: PhotoView(
                          //               imageProvider: AssetImage(
                          //                   "assets/${widget.listPlan[index]}"),
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // );
                        },
                        child: Image.asset(
                            "assets/promenade1/${widget.listPlan[index]}"),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Plans 3D ",
                      style: style(),
                    ),
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(1, (index) {
                      return InkWell(
                        onTap: () {
                          //
                          choix.value = 1;
                          // Get.dialog(
                          //   Material(
                          //     color: Colors.transparent,
                          //     child: Container(
                          //       height: Get.size.height / 1.2,
                          //       width: Get.size.width / 1.2,
                          //       child: Column(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Container(
                          //             alignment: Alignment.centerRight,
                          //             height: 50,
                          //             color: Colors.white,
                          //             child: IconButton(
                          //               color: Colors.grey,
                          //               onPressed: () {
                          //                 //
                          //                 Get.back();
                          //                 //
                          //               },
                          //               icon: Icon(
                          //                 Icons.close,
                          //                 color: Colors.black,
                          //               ),
                          //             ),
                          //           ),
                          //           Expanded(
                          //             child: PhotoView(
                          //               imageProvider: AssetImage(
                          //                   "assets/${widget.listPlan[index]}"),
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // );
                        },
                        child: Image.asset(
                            "assets/promenade1/${widget.listPlan[index]}"),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Albums Salon",
                      style: style(),
                    ),
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(1, (index) {
                      return InkWell(
                        onTap: () {
                          //
                          choix.value = 2;
                          // Get.dialog(
                          //   Material(
                          //     color: Colors.transparent,
                          //     child: Container(
                          //       height: Get.size.height / 1.2,
                          //       width: Get.size.width / 1.2,
                          //       child: Column(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Container(
                          //             alignment: Alignment.centerRight,
                          //             height: 50,
                          //             color: Colors.white,
                          //             child: IconButton(
                          //               color: Colors.grey,
                          //               onPressed: () {
                          //                 //
                          //                 Get.back();
                          //                 //
                          //               },
                          //               icon: Icon(
                          //                 Icons.close,
                          //                 color: Colors.black,
                          //               ),
                          //             ),
                          //           ),
                          //           Expanded(
                          //             child: PhotoView(
                          //               imageProvider: AssetImage(
                          //                   "assets/${widget.listPlan[index]}"),
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // );
                        },
                        child: Image.asset(
                            "assets/promenade1/IMG-20180223-WA0013.jpg"),
                      );
                    }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Albums Chambre",
                      style: style(),
                    ),
                  ),
                  Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(1, (index) {
                      return InkWell(
                        onTap: () {
                          //
                          choix.value = 3;
                          // Get.dialog(
                          //   Material(
                          //     color: Colors.transparent,
                          //     child: Container(
                          //       height: Get.size.height / 1.2,
                          //       width: Get.size.width / 1.2,
                          //       child: Column(
                          //         mainAxisAlignment:
                          //             MainAxisAlignment.spaceBetween,
                          //         children: [
                          //           Container(
                          //             alignment: Alignment.centerRight,
                          //             height: 50,
                          //             color: Colors.white,
                          //             child: IconButton(
                          //               color: Colors.grey,
                          //               onPressed: () {
                          //                 //
                          //                 Get.back();
                          //                 //
                          //               },
                          //               icon: Icon(
                          //                 Icons.close,
                          //                 color: Colors.black,
                          //               ),
                          //             ),
                          //           ),
                          //           Expanded(
                          //             child: PhotoView(
                          //               imageProvider: AssetImage(
                          //                   "assets/${widget.listPlan[index]}"),
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // );
                        },
                        child: Image.asset(
                            "assets/promenade1/IMG-20180223-WA0026.jpg"),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Obx(() {
              if (choix.value == 0) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: PhotoView(
                    backgroundDecoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    imageProvider:
                        AssetImage("assets/promenade1/${photo.value}"),
                  ),
                );
              } else if (choix.value == 1) {
                return const Padding(
                  padding: EdgeInsets.all(20),
                  child: ModelViewer(
                    backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
                    src:
                        'assets/studio_apartment_vray_baked_textures_included.glb',
                    alt: 'A 3D model of an astronaut',
                    ar: false,
                    //autoRotate: true,
                    iosSrc:
                        'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
                    disableZoom: false,
                  ),
                );
              } else if (choix.value == 2) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CarouselSlider(
                        //options: CarouselOptions(height: 500.0),
                        options: CarouselOptions(
                          height: 500.0,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                //decoration: BoxDecoration(color: Colors.amber),
                                child: Image.asset(
                                  'assets/promenade1/IMG-20180223-WA001$i.jpg',
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          );
                        }).toList(),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Text(
                          """L’architecture unique de chaque ville a été spécialement étudiée et conçue pour se fondre dans la beauté naturelle du cadre et ce en respectant des critères de haute qualité. Chaque pièce a été réalisé avec soin pour votre confort.""",
                          style: style2(),
                        ),
                      ),
                    ),
                  ],
                );
              } else if (choix.value == 3) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Expanded(
                    //   flex: 10,
                    //   child: ListWheelScrollView(
                    //     itemExtent: 300,
                    //     perspective: 0.01,
                    //     useMagnifier: true,
                    //     magnification: 1.5,
                    //     children: [22, 23, 24, 25, 26].map((i) {
                    //       return Builder(
                    //         builder: (BuildContext context) {
                    //           print("la valeur du truc $i");
                    //           return Container(
                    //             width: 300,
                    //             margin: EdgeInsets.symmetric(horizontal: 5.0),
                    //             //decoration: BoxDecoration(color: Colors.amber),
                    //             child: Image.asset(
                    //               'assets/promenade1/IMG-20180223-WA00$i.jpg',
                    //               fit: BoxFit.cover,
                    //             ),
                    //           );
                    //         },
                    //       );
                    //     }).toList(),
                    //   ),
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: CarouselSlider(
                        //options: CarouselOptions(height: 500.0),
                        options: CarouselOptions(
                          height: 500.0,
                          enlargeCenterPage: true,
                          autoPlay: false,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                        items: [22, 23, 24, 25, 26].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              print("la valeur du truc $i");
                              return Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                //decoration: BoxDecoration(color: Colors.amber),
                                child: Image.asset(
                                  'assets/promenade1/IMG-20180223-WA00$i.jpg',
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          );
                        }).toList(),
                        // child: CarouselSlider(
                        //   //options: CarouselOptions(height: 500.0),
                        //   options: CarouselOptions(
                        //     height: 500.0,
                        //     enlargeCenterPage: true,
                        //     autoPlay: false,
                        //     aspectRatio: 16 / 9,
                        //     autoPlayCurve: Curves.fastOutSlowIn,
                        //     enableInfiniteScroll: true,
                        //     autoPlayAnimationDuration:
                        //         Duration(milliseconds: 800),
                        //     viewportFraction: 0.8,
                        //   ),
                        //   items: [22, 23, 24, 25, 26].map((i) {
                        //     return Builder(
                        //       builder: (BuildContext context) {
                        //         print("la valeur du truc $i");
                        //         return Container(
                        //           width: MediaQuery.of(context).size.width,
                        //           margin: EdgeInsets.symmetric(horizontal: 5.0),
                        //           //decoration: BoxDecoration(color: Colors.amber),
                        //           child: Image.asset(
                        //             'assets/promenade1/IMG-20180223-WA00$i.jpg',
                        //             fit: BoxFit.cover,
                        //           ),
                        //         );
                        //       },
                        //     );
                        //   }).toList(),
                        // ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        """Dans de spacieuses salles de bain dont vous apprécierez la haute qualité des matériaux, vous aimerez la baignoire profonde ainsi que la douche vitrée séparée""",
                        style: style2(),
                      ),
                    ),
                  ],
                );
              } else {
                return Container();
              }
            }),
          ),
        ],
      ),
    );
  }

  style() {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
  }

  style2() {
    return TextStyle(
      fontSize: 20,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w200,
    );
  }
}



/**
 * const 
 */