import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:ifightcovid19/model/QuestionHealthForm.dart';
import 'package:ifightcovid19/service/config_server.dart';

class QuestionHealthService {
  Future<QuestionHealthForm> createQuestionHealthForm(
      QuestionHealthForm question) async {
    try {
      String json = _toJson(question);
      final response = await http.post(
          ConfigServer().ServiceUrl + "/register/add",
          headers: ConfigServer().Headers,
          body: json);
      var c = _fromJson(response.body);
      return c;
    } catch (e) {
      print('Server Exception!!!');
      print(e);
      return null;
    }
  }

  QuestionHealthForm _fromJson(String json) {
    Map<String, dynamic> map = jsonDecode(json);
    var question = new QuestionHealthForm();
    question.congenitalDisease = map['congenitalDisease'];
    question.choice = map['choice'];
    question.historyOfIllness = map['historyOfIllness'];
    return question;
  }

  String _toJson(QuestionHealthForm question) {
    var mapData = new Map();
    mapData["congenitalDisease"] = question.congenitalDisease;
    mapData["choice"] = question.choice;
    mapData["historyOfIllness"] = question.historyOfIllness;
    String json = jsonEncode(mapData);
    return json;
  }
}
