import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/route_manager.dart';

import 'immeubles/immeuble.dart';
import 'promenade2/promenade2.dart';

class AccueilImmeuble extends StatefulWidget {
  const AccueilImmeuble({
    super.key,
  });

  @override
  State<AccueilImmeuble> createState() => _Accueil();
}

class _Accueil extends State<AccueilImmeuble> {
  //
  List projets = [
    {"nom": "LA PROMENADE", "image": "assets/la-promenade.JPG"},
    {"nom": "LA PROMENADE MALL", "image": "assets/la_promenade_2.jpg"},
    {"nom": "KAUKA", "image": "assets/la-promenade.JPG"},
    {"nom": "TANGO LAND", "image": "assets/la-promenade.JPG"},
    {"nom": "ZARINA RESIDENCE", "image": "assets/la-promenade.JPG"},
    {"nom": "L'URBAIN", "image": "assets/la-promenade.JPG"},
    {"nom": "LE DOMAINE", "image": "assets/la-promenade.JPG"},
    {"nom": "LE PANORAMIQUE", "image": "assets/la-promenade.JPG"},
    {"nom": "LE MIRAGE", "image": "assets/la-promenade.JPG"},
    {"nom": "L'ETOILE", "image": "assets/la-promenade.JPG"},
    {"nom": "LE CENTRAL", "image": "assets/la-promenade.JPG"},
    {"nom": "LA REFERENCE", "image": "assets/la-promenade.JPG"},
    {"nom": "LE PRESTIGE", "image": "assets/la-promenade.JPG"},
    {"nom": "LA CAPITALE", "image": "assets/la-promenade.JPG"},
  ];
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(""),
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/logo safricode_.png",
            //semanticsLabel: e["titre"],
            height: 70,
            width: 70,
            //color: Colors.teal,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                width: 500,
                height: double.maxFinite,
                child: GridView.count(
                  crossAxisCount: 3,
                  children: List.generate(projets.length, (index) {
                    Map projet = projets[index];
                    return InkWell(
                      onTap: () {
                        if (index == 0) {
                          Get.to(Immeuble(
                              index: index, photo: "la-promenade.JPG"));
                        } else {
                          Get.to(Promenade2(
                              index: index, photo: "${projet['image']}"));
                          //
                        }
                      },
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Card(
                              elevation: 0,
                              //color: Colors.blue,
                              child: Hero(
                                tag: "photoImmeuble$index",
                                child: Image.asset(
                                  "${projet['image']}",
                                  fit: BoxFit.fill,
                                  height: 300,
                                ),
                              ),
                            ),
                          ),
                          Text("${projet['nom']}"),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
