import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ClientController extends GetxController with StateMixin<List> {
  var box = GetStorage();
  //
  getAllContact() async {
    //
    change([], status: RxStatus.loading());
    //
    List clients = box.read("clients") ?? [];
    //
    change(clients, status: RxStatus.success());
  }

  bool saveConatct(Map c) {
    List clients = box.read("clients") ?? [];
    //
    clients.add(c);
    box.write("clients", clients);
    return true;
  }
}
