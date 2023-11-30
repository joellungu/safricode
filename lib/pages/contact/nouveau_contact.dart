import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'contact_controller.dart';

class NouveauContact extends StatelessWidget {
  //
  ContactController contactController = Get.find();
  //
  final formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final mdp = TextEditingController();
  final nom = TextEditingController();
  final postnom = TextEditingController();
  final prenom = TextEditingController();
  final adresse = TextEditingController();
  final telephone = TextEditingController();
  final org = TextEditingController();
  final titre = TextEditingController();
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nouveau contact"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          //padding: EdgeInsets.all(10),
          height: Get.size.height,
          width: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  //da
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "   New User",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          //
                          Get.back();
                          //
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                    child: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.disabled,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: 100,
                            child: SvgPicture.asset(
                              "assets/PhUserDuotone.svg",

                              colorFilter: ColorFilter.mode(
                                  Colors.grey, BlendMode.srcIn),

                              //semanticsLabel: e["titre"],
                              height: 100,
                              width: 100,
                            ),
                          ),
                          // Image.asset(
                          //   "assets/logo_MIN SANTE.png",
                          //   width: 300,
                          //   height: 300,
                          // ),
                          // const SizedBox(
                          //   height: 70,
                          // ),
                          // const Align(
                          //   alignment:
                          //       Alignment.center,
                          //   child: Text(
                          //     "Connectez-vous pour avoir accès au contenu du cours",
                          //     textAlign:
                          //         TextAlign.center,
                          //     style: TextStyle(
                          //       fontSize: 15,
                          //       fontWeight:
                          //           FontWeight.bold,
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: nom,
                            validator: (e) {
                              if (e!.isEmpty) {
                                return "Please input the name";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.person),
                              hintText: "Nom",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: postnom,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.person),
                              hintText: "Postnom",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: prenom,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.person),
                              hintText: "Prenom",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: telephone,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.phone_android),
                              hintText: "Phone number",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: email,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.email),
                              hintText: "Email",
                            ),
                          ), //

                          const SizedBox(
                            height: 20,
                          ),
                          TextField(
                            controller: org,
                            //obscureText: masquer.value,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.business),
                              hintText: "Organisation",
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          TextField(
                            controller: titre,
                            //obscureText: masquer.value,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: const Icon(Icons.business),
                              hintText: "Titre",
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                //Get.off(Accueil());

                                Get.dialog(
                                  Container(
                                    height: 40,
                                    width: 40,
                                    child: const CircularProgressIndicator(),
                                    alignment: Alignment.center,
                                  ),
                                );

                                // Timer(Duration(seconds: 3), () {
                                //   Get.back();
                                //   Get.off(Accueil());
                                // });
                                /**public String nom;
    public String telephone;
    public String maman;
    public String niveau;
    public String mdp;
     */
                                Map e = {
                                  "nom": nom.text,
                                  "postnom": postnom.text,
                                  "prenom": prenom.text,
                                  "telephone": telephone.text,
                                  "email": email.text,
                                  "org": org.text,
                                  "TITLE": titre.text,
                                };

                                if (contactController.saveConatct(e)) {
                                  //
                                  Get.back();
                                  //
                                  Get.snackbar(
                                      "Succes", "Enregistrement éffectué");
                                  //
                                  nom.clear();
                                  postnom.clear();
                                  prenom.clear();
                                  telephone.clear();
                                  email.clear();
                                  org.clear();
                                  //
                                  contactController.getAllContact();
                                }

                                //Get.to(Cours());
                                //loginController.deja.value = true;
                              }
                            },
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                Size(
                                  double.maxFinite,
                                  45,
                                ),
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: double.maxFinite,
                              child: const Text(
                                "Enregistrer",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // OutlinedButton(
                          //   onPressed: () {
                          //     //
                          //     //Get.to(MdpOublie());
                          //   },
                          //   style: ButtonStyle(
                          //     fixedSize: MaterialStateProperty.all(
                          //       Size(
                          //         double.maxFinite,
                          //         45,
                          //       ),
                          //     ),
                          //     shape:
                          //         MaterialStateProperty.all(RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(20),
                          //     )),
                          //     //backgroundColor:
                          //     //  MaterialStateProperty.all(Colors.red.shade900),
                          //   ),
                          //   child: Container(
                          //     alignment: Alignment.center,
                          //     width: double.maxFinite,
                          //     child: const Text(
                          //       "Mot de passe oublié",
                          //       style: TextStyle(
                          //         color: Colors.black,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      //)
                    ),
                  ),
                ),

                // ElevatedButton(
                //   onPressed: () async {
                //     //
                //     //
                //   },
                //   child: Text("Save"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
