// 判断是否已经登陆
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// 判断是否已经登陆，未登录跳转登陆页面
Future<bool> isLoginFun(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  return isLoggedIn;
}
