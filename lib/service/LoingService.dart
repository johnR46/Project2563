import 'package:ifightcovid19/model/Login.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class LoginService {
  static const _serviceUrl = ' http://86908cc8716e.ngrok.io';
  // /register/add
  static final _headers = {'Content-Type': 'application/json'};

  Future<Login> createLogin(Login login) async {
    try {
      String json = _toJson(login);
      final response = await http.post(_serviceUrl + "/login/add",
          headers: _headers, body: json);
      var c = _fromJson(response.body);
      return c;
    } catch (e) {
      print('Server Exception!!!');
      print(e);
      return null;
    }
  }

  Login _fromJson(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    var login = new Login();
    login.user = map['user'];
    login.password = map['password'];

    return login;
  }

  String _toJson(Login login) {
    var mapData = new Map();
    mapData["user"] = login.user;
    mapData["password"] = login.password;
   
    String json = jsonEncode(mapData);
    return json;
  }
}
