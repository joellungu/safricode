import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:safricode_glance/widgets/hostpot_animation.dart';

import 'appartements/appartement.dart';
import 'appartements/appartement_photo.dart';

class Immeuble extends StatefulWidget {
  int index;
  String photo;
  Immeuble({
    super.key,
    required this.index,
    required this.photo,
  });

  @override
  State<Immeuble> createState() => _Immeuble();
}

class _Immeuble extends State<Immeuble> {
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
              padding: const EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Hero(
                    tag: "photoImmeuble${widget.index}",
                    child: Image.asset("assets/la-promenade.JPG"),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
                padding: EdgeInsets.all(20),
                child: true
                    ? Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: ExactAssetImage(
                                    "assets/plan-la-promenade.png"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.63, 0.6),
                            child: InkWell(
                              onTap: () {
                                //
                                Get.to(
                                  Appartement(
                                    index: widget.index,
                                    photo: "la-promenade.JPG",
                                    listPlan: [
                                      "plan-promenade-type-4.0.png",
                                      "plan-promenade-type-4.1.png"
                                    ],
                                  ),
                                );
                              },
                              child: HotspotVue(
                                titre: "",
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.30, 0.47),
                            child: InkWell(
                              onTap: () {
                                Get.to(
                                  Appartement(
                                    index: widget.index,
                                    photo: "la-promenade.JPG",
                                    listPlan: [
                                      "plan-promenade-type-4.0.png",
                                      "plan-promenade-type-4.1.png"
                                    ],
                                  ),
                                );
                              },
                              child: HotspotVue(
                                titre: "",
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment(0.63, -0.2),
                            child: InkWell(
                              onTap: () {
                                Get.to(
                                  Appartement(
                                    index: widget.index,
                                    photo: "la-promenade.JPG",
                                    listPlan: [
                                      "plan-promenade-type-3.0.png",
                                      "plan-promenade-type-3.1.png"
                                    ],
                                  ),
                                );
                              },
                              child: HotspotVue(
                                titre: "",
                              ),
                            ),
                          ),
                        ],
                      )
                    : Container()),
          ),
        ],
      ),
    );
  }
}

/**
 * Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Align(
                          alignment: Alignment.center,
                          child: Text("Type d'appartement"),
                        ),
                        Expanded(
                          flex: 1,
                          child: GridView.count(
                            crossAxisCount: 2,
                            children: List.generate(3, (index) {
                              return InkWell(
                                onTap: () {
                                  Get.to(
                                    Appartement(
                                      index: widget.index,
                                      photo: "la-promenade.JPG",
                                    ),
                                  );
                                },
                                child: Container(
                                  margin: const EdgeInsets.all(2),
                                  color: Colors.blue,
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
 */