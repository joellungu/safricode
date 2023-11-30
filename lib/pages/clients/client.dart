import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'client_controller.dart';
import 'nouveau_client.dart';

class AccueilClient extends GetView<ClientController> {
  AccueilClient() {
    controller.getAllContact();
  }
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade300,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: controller.obx(
                  (state) {
                    List contacts = state!;
                    //
                    return ListView(
                      children: List.generate(contacts.length, (index) {
                        Map contact = contacts[index];
                        return ListTile(
                          onTap: () {
                            //
                            print("""BEGIN:VCARD
VERSION:3.0
N:N:${contact['postnom'] ?? ''};${contact['nom'] ?? ''};${contact['prenom'] ?? ''}
FN:${contact['prenom']} ${contact['postnom']}
ORG:${contact['org']}
TEL;TYPE=cell;VOICE:${contact['telephone']} 
EMAIL;TYPE=PREF,INTERNET:${contact['email']}
END:VCARD""");
                            //
                            showModalBottomSheet(
                              useSafeArea: true,
                              isScrollControlled: true,
                              showDragHandle: true,
                              barrierColor: Colors.grey,
                              barrierLabel: "Salut comment ?",
                              //backgroundColor: Colors.transparent,
                              context: context,
                              builder: (c) {
                                return Container(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      ListTile(
                                        title: Text(
                                            "${contact['nom']} ${contact['postnom'] ?? ''} ${contact['prenom']}"),
                                        subtitle: Text("${contact['email']}"),
                                        leading: Container(
                                          height: 50,
                                          width: 50,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: Colors.grey.withOpacity(0.4),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          child: const Icon(Icons.person),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Center(
                                          child: Container(
                                            color: Colors.grey.shade200
                                                .withOpacity(0.4),
                                            height: double.maxFinite,
                                            width: double.maxFinite,
                                            child: QrImageView(
                                              padding: const EdgeInsets.all(0),
                                              data: """BEGIN:VCARD
VERSION:4.0
N:${contact['postnom'] ?? ''};${contact['nom'] ?? ''};${contact['prenom'] ?? ''}
FN:${contact['prenom'] ?? contact['nom']} ${contact['postnom']}
ORG:${contact['org']}
TEL;TYPE=WORK;VOICE:${contact['telephone']} 
EMAIL;TYPE=PREF,INTERNET:${contact['email']}
END:VCARD""",
                                              version: QrVersions.auto,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      /***/
                                      const SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          title: Text(
                              "${contact['nom']} ${contact['postnom']} ${contact['prenom']}"),
                          subtitle: Text("${contact['email']}"),
                          leading: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Icon(Icons.person),
                          ),
                        );
                      }),
                    );
                  },
                  onLoading: Center(
                    child: Container(
                      height: 40,
                      width: 40,
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //
                  Get.to(NouveauContact());
                  //
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: const Text(
                  "Nouveau client",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
