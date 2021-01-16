import 'package:http/http.dart' as Http;

class ItemsService{

  static getItems() {
    var url = "http://192.168.100.17/items";
    print('call items');
    Http.get(url).then((response) {
      print("Response status: ${response.body}");
    });
  }

  static logindoctor(String name) {
    var url = "http://192.168.100.17/logindoctor";
    print('call items');
    Http.get(url).then((response) {
      print("Response status: ${response.body}");
    });
  }

   static loginnurse(String name) {
    var url = "http://192.168.100.17/loginnurse";
    print('call items');
    Http.get(url).then((response) {
      print("Response status: ${response.body}");
    });
  }
    static registerpatient(String name) {
    var url = "http://192.168.100.17/Registerpatient";
    print('call items');
    Http.get(url).then((response) {
      print("Response status: ${response.body}");
    });
  }

  static patienthistoryinformation(String name) {
    var url = "http://192.168.100.17/ Patienthistoryinformation";
    print('call items');
    Http.get(url).then((response) {
      print("Response status: ${response.body}");
    });
  }
}