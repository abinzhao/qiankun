import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                const Text('哈喽,这是配置页面!'),
                ElevatedButton(
                  onPressed: () => context.go('/'),
                  child: const Text('回到首页'),
                ),
                ElevatedButton(
                  onPressed: () => context.go('/login'),
                  child: const Text('去到登陆页'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
