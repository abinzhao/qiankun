import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:qiankun/components/cyberpunk_input.dart';
import 'package:qiankun/components/glitch_text.dart';
import 'package:qiankun/pages/login/contants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 48),
                  const GlitchText(
                    text: loginTitle,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 54.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      shadows: [
                        Shadow(
                          color: Color.fromARGB(255, 129, 3, 255),
                          offset: Offset(0.0, 2.0),
                          blurRadius: 2.0,
                        ),
                      ],
                    ),
                  ),
                  CyberpunkInputWidget(
                    hintText: 'Username',
                    controller: _usernameController,
                    onChanged: (value) {
                      // 处理用户名输入事件
                    },
                    onSubmitted: (v) {
                      // 提交用户名
                    },
                    obscureText: false,
                  ),
                  const SizedBox(height: 16),
                  CyberpunkInputWidget(
                    hintText: 'Password',
                    controller: _passwordController,
                    obscureText: true, // 隐藏密码输入
                    onChanged: (value) {
                      // 处理密码输入事件
                    },
                    onSubmitted: (v) {
                      // 提交密码
                    },
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // 登录操作逻辑
                      SystemChrome.setSystemUIOverlayStyle(
                          const SystemUiOverlayStyle(
                        statusBarColor: Colors.transparent,
                        statusBarIconBrightness: Brightness.dark,
                      ));
                      context.go('/');
                    },
                    child: const Text('Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
