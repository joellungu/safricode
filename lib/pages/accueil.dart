import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:safricode_glance/pages/accueil_immeuble.dart';
import 'clients/client.dart';
import 'clients/client_controller.dart';
import 'contact/contact.dart';
import 'contact/contact_controller.dart';
import 'immeubles/immeuble.dart';
import 'promenade2/promenade2.dart';

class Accueil extends StatefulWidget {
  const Accueil({
    super.key,
  });

  @override
  State<Accueil> createState() => _Accueil();
}

class _Accueil extends State<Accueil> {
  //
  ContactController contactController = Get.put(ContactController());
  //
  ClientController clientController = Get.put(ClientController());
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      body: Center(
          child: SizedBox(
        height: 500,
        width: 500,
        child: GridView.count(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisCount: 2,
          children: [
            Card(
              elevation: 1,
              child: InkWell(
                onTap: () {
                  //
                  Get.offAll(AccueilContact());
                  //
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  child: const Text(
                    "Contacts",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 1,
              child: InkWell(
                onTap: () {
                  //
                  Get.to(const AccueilImmeuble());
                  //
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  child: const Text(
                    "Visite virtuelle",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 1,
              child: InkWell(
                onTap: () {
                  //
                  Get.to(AccueilClient());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 200,
                  child: const Text(
                    "Contacts clients",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
