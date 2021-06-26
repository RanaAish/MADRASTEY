import 'dart:convert';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;
import 'package:learn/view/controrview.dart';
import 'package:get/get.dart';
import 'package:learn/model/user.dart';
import 'package:learn/model/Course_model.dart';
import 'package:learn/model/Quiz.dart';
import 'package:learn/model/result.dart';
import 'package:learn/model/trip.dart';

class AuthViewmodel extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  String _name = null;
  User _user;

  get name => _name;
  get user => _user;

  Future<User> login(String name, String pass, String role) async {
    // post to url
    await http
        .post(
            "http://madrasty.somee.com/Api/users/Login?name=$name&password=$pass&role=$role")
        .then((http.Response response) {
      if (response.body != "null") {
        User useresponce = User.fromJson(jsonDecode(response.body));
        //store user who login according app
        _user = User(
          iD: useresponce.iD,
          name: name,
          password: pass,
          role: role,
          code: useresponce.code,
          gender: useresponce.gender,
        );
        _name = _user.name;
        print("result ${useresponce.name}");
        Get.offAll(ControlView());
        Get.snackbar("Hello $_name", "Login Successfully");
      } else {
        Get.snackbar("Error Login account", "Something went wrong!");
      }
      return _user;
    });
  }

  Future<List<User>> getallusers() async {
    final http.Response response =
        await http.get('http://madrasty.somee.com/api/users/GetAllUsers');
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<User>((item) => User.fromJson(item)).toList();
  }

  Future<http.Response> addusers(
    String name,
    String code,
    String phone,
    String gender,
    String email,
    String role,
  ) async {
    final http.Response response = await http.post(
        'http://madrasty.somee.com/Api/users/adduser?code=$code&name=$name&password=" "&role=$role&email=$email&phone=$phone'
        '&gender=$gender');
  }

  Future<List<Course>> getallcourses(int id) async
  {
    final http.Response response =
    await http.get('http://madrasty.somee.com/api/Course/GetAllCourses?studentid=$id');
    final parsed = jsonDecode(response.body).cast<Map<String,dynamic>>();
    return parsed.map<Course>((item) =>Course.fromJson(item)).toList();

  }

  Future <List<Quiz>>getquizes (int studentid,int courseid) async
  {
    final http.Response response =await http.get("http://madrasty.somee.com/api/Quiz/GetAllQuizsByCourseID?courseID=$courseid&studentID=$studentid");
    final parsed = jsonDecode(response.body).cast<Map<String,dynamic>>();
    return parsed.map<Quiz>((item) =>Quiz.fromJson(item)).toList();
  }

  Future <List<Result>> getresult (int studentid) async
  {
    final http.Response response=await http.get("http://madrasty.somee.com/api/Result/GetStudentResult?studentID=$studentid");
    print(jsonDecode(response.body));
    final parsed = json.decode(response.body).cast<Map<String,dynamic>>();
    return parsed.map<Result>((item) =>Result.fromJson(item)).toList();
  }

  Future<List<Trip>>getlengthoftrip (int studentid) async
  {
    final http.Response response=await http.get("http://madrasty.somee.com/api/Trip/GetAllActiveTrips?studentID=$studentid");
    print(response.body);
    final parsed = json.decode(response.body).cast<Map<String,dynamic>>();
    return parsed.map<Trip>((item) =>Trip.fromJson(item)).toList();
  }

}
