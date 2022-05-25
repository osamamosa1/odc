import 'dart:convert';

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:odc/Question.dart';
import 'package:odc/categoryModel.dart';
import 'package:odc/coursesModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Data extends ChangeNotifier {
  String url = 'https://d67c-196-205-94-85.eu.ngrok.io/api/v1';

//login and register logic
  var loginEmail, loginPassword;
  var registerEmail,
      registerPassword,
      registerName,
      registerPhone,
      registerAddress;
  bool privacyAcceptance = false;
  var refreshToken, accessToken, regStatus, regMsgStatus;

  register() async {
    notifyListeners();
    http.Response response = await http.post(
      Uri.parse("$url/registernew"),
      headers: <String, String>{
        'Content-Type': 'application/json; char=UTF-8',
      },
      body: jsonEncode(
        {
          'name': registerName,
          'email': registerEmail,
          'password': registerPassword,
          'phone': registerPhone,
          'address': registerAddress,
        },
      ),
    );
    var body = jsonDecode(response.body);
    regStatus = await body["success"];
    print(regStatus);
    regMsgStatus = await body["message"];
    print(regMsgStatus);
    notifyListeners();
    if (response.statusCode == 200) {
      print('Success =200 register ********');
      print(body);
      if (regStatus == true) {
        accessToken = await body["data"]["access_token"].toString();
        refreshToken = await body["data"]["refresh_token"].toString();
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString("accessToken", accessToken);
        prefs.setString("refreshToken", refreshToken);
      }
    } else {
      print('failed == 400 login ******');
    }
  }

  login() async {
    notifyListeners();
    http.Response response = await http.post(
      Uri.parse("$url/login"),
      headers: <String, String>{
        'Content-Type': 'application/json; char=UTF-8',
      },
      body: jsonEncode(
        {
          'name': registerName,
          'email': registerEmail,
          'password': registerPassword,
          'phone': registerPhone,
          'address': registerAddress,
        },
      ),
    );

    var body = jsonDecode(response.body);
  }

//homePageLogic
  String searchCode;

//categories
  List <CategoryModel> Categories = [];

  getCategories({bool allCat = false}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    accessToken = prefs.getString("accessToken");
    refreshToken = prefs.getString("refreshToken");
    int lenth = 0;
    try {
      http.Response response = await http.get(
        Uri.parse("$url/categories"),
        headers: <String, String>{
          'Authorization':'Bearer $accessToken',
          'Content-Type': 'application/json; char=UTF-8',
        },
      );
      var body = jsonDecode(response.body);
      if (allCat == true) {
        lenth = body['data'].length;
      } else {
        if (body['data'].length > 3) {
          lenth = 3;
        } else {
          lenth = body['data'].length;
        }
      }

      for (int i = 0; i < lenth; i++) {
       var id = body['data'][i]['id'].toString();
       var name = body['data'][i]['category_name'];
       var image = body['data'][i]['image_url'];

        Categories.add(CategoryModel(
          image: image,
          tittle: name,
          id: id,
        ));
      }
      notifyListeners();
    } catch (e) {
      print("$e getCategories *********");
      refreshToken();
    }
  }

  Future<List<CategoryModel>> getCoursesbyCategoryId(int CategoryId) async {
    List<CategoryModel> CategoryById = [];
    var prefs = await SharedPreferences.getInstance();
    accessToken = prefs.get('accessToken');
    notifyListeners();
    http.Response response = await http.post(
      Uri.parse("$url/categories/$CategoryId/courses"),
      headers: <String, String>{
        'Content-Type': 'application/json; char=UTF-8',
        'Authorization': 'Bearer $accessToken',
      },
    );
    var body = json.decode(response.body);
    int lenth = body['data'].length;
    for (int i = 0; i < lenth; i++) {}
    return CategoryById;
  }

//courses
  List<CoursesModel> Courses = [];

  getCourses() async {
    var prefs = await SharedPreferences.getInstance();
    accessToken = prefs.get('accessToken');
    notifyListeners();
    http.Response response = await http.get(
      Uri.parse("$url/courses"),
      headers: <String, String>{
        'Content-Type': 'application/json; char=UTF-8',
        'Authorization': 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwiaWF0IjoxNjUzNDQyNjM4LCJleHAiOjE2NTM0NDYyMzh9.aaAjZWRaWCq4xLf3cjVzHBY4sl7IvFGK_6m_UXoR53o',
      },
    );
    var body = jsonDecode(response.body);
    int lenth = body['data'].length;
    for (int i = 0; i < lenth; i++) {
      Courses.add(CoursesModel(
        tittle: body['data'][i]['category_name'].toString(),
        id: body['data'][i]['id'].toString(),
        image: body['data'][i]['image-url'].toString(),
      ));
    }
  }

// refresh token
  refreshAccessToken() async {
    var prefs = await SharedPreferences.getInstance();
    notifyListeners();
    http.Response response = await http.post(
      Uri.parse("$url/refreshToken"),
      headers: <String, String>{
        'Content-Type': 'application/json; char=UTF-8',
        'Authorization': 'Bearer $refreshToken',
      },
    );
    var body = jsonDecode(response.body);
    prefs.setString('refreshToken', body['data']['refresh_token'].toString());
    prefs.setString('accessToken', body['data']['access_token'].toString());
    accessToken = prefs.get('accessToken');
    refreshToken = prefs.get('refreshToken');
  }

//home logic

  int homePageIndex = 0;

//exams logic
  var courseCode;
  List<Question>Quistions=[];
  List<String>UserAnswers=[];
  int courseId;
  getQuestions(var code)async{
    var prefs = await SharedPreferences.getInstance();
    notifyListeners();
    http.Response response = await http.post(
      Uri.parse("$url/exam"),
      headers: <String, String>{
        'Content-Type': 'application/json; char=UTF-8',
        'Authorization': 'Bearer $accessToken',
      },
    );
    var body=jsonDecode(response.body);
    questionsLength=body['questions'].length;
    for(int i=0 ;i<questionsLength;i++){
      List <String> Answers=[];
      Answers.add(body['data'][i]['answers'][1].toString());
      Answers.add(body['data'][i]['answers'][2].toString());
      Answers.add(body['data'][i]['answers'][3].toString());
      Quistions.add(Question(Answers:Answers,question: body['data'][i]['question'],));
    }
  }
  int questionsLength = 0;
  int questionsCounter = 0;
}
