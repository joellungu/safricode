import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:safricode_glance/pages/immeubles/appartements/appartement.dart';
import 'package:safricode_glance/widgets/hostpot_animation.dart';

import 'details_promenade_2.dart';

class Promenade2 extends StatefulWidget {
  int index;
  String photo;
  Promenade2({
    super.key,
    required this.index,
    required this.photo,
  });

  @override
  State<Promenade2> createState() => _Promenade2();
}

class _Promenade2 extends State<Promenade2> {
  //
  List categories = [
    {
      "nom": "La Promenade Résidence type 1",
      "photo": "",
      "plan": [],
    },
    {
      "nom": "La Promenade Résidence type 2",
      "photo": "",
      "plan": [],
    },
    {
      "nom": "La Promenade Burreau",
      "photo": "",
      "plan": [],
    },
  ];
  //
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
                    child: Image.asset(widget.photo),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: 500,
                    height: double.maxFinite,
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(categories.length, (index) {
                        Map cat = categories[index];
                        return InkWell(
                          onTap: () {
                            Get.to(
                              DetailsPromenade2(
                                  listPlan: const [
                                    "assets/promenade2/la promenade_1 - Photo.jpg",
                                  ],
                                  index: index,
                                  photo: "la promenade_1 - Photo.jpg"),
                            );
                          },
                          child: Column(
                            children: [
                              Card(
                                elevation: 0,
                                color: Colors.blue,
                                child: Hero(
                                  tag: "promenade2$index",
                                  child:
                                      Image.asset("assets/la_promenade_2.jpg"),
                                ),
                              ),
                              Text("${cat['nom']}")
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                )),
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