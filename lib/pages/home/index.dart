import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                const Text('哈喽,这是首页页面!'),
                ElevatedButton(
                  onPressed: () => context.go('/config'),
                  child: const Text('去到配置页'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
