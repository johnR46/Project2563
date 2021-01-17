import 'package:ifightcovid19/model/RegisterParent.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RegisterService {
  static const _serviceUrl = 'http://477feaafde6b.ngrok.io';
  // /register/add
  static final _headers = {'Content-Type': 'application/json'};

  Future<RegisterParent> createRegisterParent(RegisterParent register) async {
    try {
      String json = _toJson(register);
      final response = await http.post(_serviceUrl + "/register/add",
          headers: _headers, body: json);
      var c = _fromJson(response.body);
      return c;
    } catch (e) {
      print('Server Exception!!!');
      print(e);
      return null;
    }
  }

  RegisterParent _fromJson(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    var register = new RegisterParent();
    register.firstNameLastName = map['firstNameLastName'];
    register.firstNameLastName = map['firstNameLastName'];
    register.dateOfBirth = map['dateOfBirth'];
    register.personId = map['personId'];
    register.address = map['address'];
    register.district = map['district'];
    register.phone = map['phone'];
    return register;
  }

  String _toJson(RegisterParent register) {
    var mapData = new Map();
    mapData["firstNameLastName"] = register.firstNameLastName;
    mapData["firstNameLastName"] = register.firstNameLastName;
    mapData["dateOfBirth"] = register.dateOfBirth;
    mapData["personId"] = register.personId;
    mapData["address"] = register.address;
    mapData["district"] = register.district;
    mapData["phone"] = register.phone;
    String json = jsonEncode(mapData);
    return json;
  }
}
