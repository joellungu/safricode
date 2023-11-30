import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ClientController extends GetxController with StateMixin<List> {
  var box = GetStorage();
  //
  getAllContact() async {
    //
    change([], status: RxStatus.loading());
    //
    List contacts = box.read("contacts") ?? [];
    //
    change(contacts, status: RxStatus.success());
  }

  bool saveConatct(Map c) {
    List contacts = box.read("contacts") ?? [];
    //
    contacts.add(c);
    box.write("contacts", contacts);
    return true;
  }
}
