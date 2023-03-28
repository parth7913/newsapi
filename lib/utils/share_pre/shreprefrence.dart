import 'package:shared_preferences/shared_preferences.dart';

void createshere(email, password) async {
  SharedPreferences shr = await SharedPreferences.getInstance();
  shr.setString("e1", email);
  shr.setString('p1', password);
}

Future<Map<String, String?>> reademailpref() async {
  SharedPreferences shr = await SharedPreferences.getInstance();
  String? email = shr.getString("e1");
  String? password = shr.getString('p1');
  return {'email': email, 'password': password};
}

void alreadylogin(boolian) async {
  SharedPreferences shr = await SharedPreferences.getInstance();
  shr.setBool('b1', boolian);
}

Future<bool?> readlogin() async {
  SharedPreferences shr = await SharedPreferences.getInstance();
  bool? boolian = shr.getBool('b1');
  return boolian;
}
